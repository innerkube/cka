# data: 20220930
# Kubernetes Version 1.24, 1.25

#1. master에 ubuntu로 로그인후 실습 디렉토리 생성
sudo mkdir -p /data/{cka,ckad,cks} /var/CKA2022/ 
sudo apt update
sudo apt install wget curl tree -y


#2. ubuntu사용자의 ssh 인증서를 생성한 후 인증 key 전달
master's ubuntu 사용자가 패스워드 인증 없이 node1, node2 에 로그인 허용
==============
*node1,2에 root로 로그인
$ sudo -i
# vi /etc/ssh/sshd_config
34 PermitRootLogin yes
58 PasswordAuthentication yes
# systemctl restart sshd

* ubuntu user의 패스워드 설정
# passwd ubuntu


=====Master====
ssh-keygen -t rsa
<ENTER>
<ENTER>
<ENTER>

ssh-copy-id node1
ssh-copy-id node2

#TEST
ssh node1
ssh node2


#3. Node에 label 설정
kubectl label node node1 disktype=ssd gpu=true
kubectl label node node2 disktype=std
kubectl get node -L disktype,gpu


#4. Host Volume 생성
# node1, 2에 미리 작업
mkdir -p /data/{app-data,volume,storage,cka} /app/storage/storage{1,2,3}

====CKA에서만========
#5. 시험준비 환경 구성
cat <<EOF | kubectl apply -f -
---
apiVersion: v1
kind: Namespace
metadata:
  name: migops
  labels:
    team: migops

---
apiVersion: v1
kind: Namespace
metadata:
  name: devops
  labels:
    team: devops
---
apiVersion: v1
kind: Namespace
metadata:
  name: presales
  labels:
    team: presales
---

## namespcae customera
apiVersion: v1
kind: Namespace
metadata:
  name: customera
  labels:
    partition: customera

---
## namespcae customera
apiVersion: v1
kind: Namespace
metadata:
  name: customerb
  labels:
    partition: customerb
---

## deploy and service-port추가해서 
## k8s
apiVersion: apps/v1
kind: Deployment
metadata:
  name: front-end
spec:
  selector:
    matchLabels:
      run: nginx
  replicas: 2
  template:
    metadata:
      labels:
        run: nginx
    spec:
      containers:
      - name: http
        image: nginx

---
## storage class를 가진 PV 생성준비
## 문제 : pvc생성 - pod 마운트 - pvc size 확장
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv1
spec:
  capacity:
    storage: 1Gi
  accessModes:
  - ReadWriteMany
  - ReadOnlyMany
  persistentVolumeReclaimPolicy: Recycle
  storageClassName: app-hostpath-sc
  hostPath:
    path: /data/storage

---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv2
spec:
  capacity:
    storage: 1Gi
  accessModes:
  - ReadWriteMany
  - ReadOnlyMany
  persistentVolumeReclaimPolicy: Recycle
  storageClassName: app-data-sc
  hostPath:
    path: /data/volume

---
## sidecar container
apiVersion: v1
kind: Pod
metadata:
  name: eshop-cart-app
spec:
  containers:
  - image: busybox
    name: cart-app
    command: ['/bin/sh', '-c', 'i=1;while :;do  echo -e "$i: Price: $((RANDOM % 10000 + 1))" >> /var/log/cart-app.log; i=$((i+1)); sleep 2; done']
    volumeMounts:
    - name: varlog
      mountPath: /var/log
  volumes:
  - emptyDir: {}
    name: varlog
---
## rolling update
## k8s
## replicas 수를 5개로 확장
apiVersion: apps/v1
kind: Deployment
metadata:
  name: eshop-order
  namespace: devops
spec:
  replicas: 2
  selector:
    matchLabels:
      name: order
  template:
    metadata:
      name: order
      labels:
        name: order
    spec:
      containers:
      - name: nginx-container
        image: nginx:1.14

---
# NetworkPolicy
kind: Pod
apiVersion: v1
metadata:
  name: web
  namespace: migops
  labels:
    app: webwas
    tier: frontend
spec:
  containers:
  - name: web
    image: smlinux/cent-mysql:v1
    command: ["/bin/bash"]
    args: ["-c", "while true; do echo hello; sleep 10;done"]

---

kind: Pod
apiVersion: v1
metadata:
  name: was
  namespace: migops
  labels:
    app: webwas
    tier: application
spec:
  containers:
  - name: was
    image: smlinux/cent-mysql:v1
    command: ["/bin/bash"]
    args: ["-c", "while true; do echo hello; sleep 10;done"]

---

kind: Pod
apiVersion: v1
metadata:
  name: db
  namespace: migops
  labels:
    app: webwas
    tier: database
spec:
  containers:
    - name: db
      image: mysql:5.7
      env:
      - name: MYSQL_ROOT_PASSWORD
        value: pass

---
## init container
apiVersion: v1
kind: Pod
metadata:
  name: web
spec:
  containers:
  - name: nginx
    image: nginx
    command: ['sh', '-c', 'if [ ! -e "/opt/test" ];then exit;fi;']
    volumeMounts:
    - name: workdir
      mountPath: /opt
  volumes:
  - name: workdir
    emptyDir: {}

---
## log exam
apiVersion: v1
kind: Pod
metadata:
  name: custom-app
  namespace: default
spec:
  containers:
  - name: app
    image: busybox
    command: ['/bin/sh', '-c', 'while :;do echo -e "find files\nerror: file not found\nToday: $(date)\nHostname: $(hostname)"; sleep 60; done']

---
## sidecar exam
apiVersion: v1
kind: Pod
metadata:
  name: cka-webserver
  namespace: default
spec:
  containers:
  - image: nginx:1.14
    name: webserver
    volumeMounts:
    - mountPath: /var/log/nginx
      name: log
  volumes:
  - name: log
    emptyDir: {}

---
## cpu load :
apiVersion: v1
kind: Pod
metadata:
  labels:
    name: overloaded-cpu
  name: campus-01
spec:
  containers:
  - name: campus
    image: smlinux/vish-stress
    resources:
      limits:
        cpu: "0.4"
        memory: "300Mi"
      requests:
        cpu: "0.4"
        memory: "250Mi"
    args:
    - -cpus
    - "1"
    - -mem-total
    - "150Mi"
    - -mem-alloc-size
    - "100Mi"
    - -mem-alloc-sleep
    - "1s"
---
apiVersion: v1
kind: Pod
metadata:
  labels:
    name: overloaded-cpu
  name: fast-01
spec:
  containers:
  - name: fast
    image: smlinux/vish-stress
    resources:
      limits:
        cpu: "0.2"
        memory: "300Mi"
      requests:
        cpu: "0.2"
        memory: "250Mi"
    args:
    - -cpus
    - "1"
    - -mem-total
    - "250Mi"
    - -mem-alloc-size
    - "100Mi"
    - -mem-alloc-sleep
    - "1s"

---
#multi-container
apiVersion: v1
kind: Pod
metadata:
  name: busybox-sleep
spec:
  containers:
  - name: busybox
    image: busybox
    command: ["/bin/sh"]
    args: ["-c", "while true; do sleep 1000; done"]

EOF

#6. etcd 설치
export RELEASE=$(curl -s https://api.github.com/repos/etcd-io/etcd/releases/latest|grep tag_name | cut -d '"' -f 4)
wget https://github.com/etcd-io/etcd/releases/download/${RELEASE}/etcd-${RELEASE}-linux-amd64.tar.gz
tar xf etcd-${RELEASE}-linux-amd64.tar.gz
cd etcd-${RELEASE}-linux-amd64
sudo mv etcd etcdctl etcdutl /usr/local/bin
etcd --version
cd

sudo ETCDCTL_API=3 etcdctl --endpoints=https://127.0.0.1:2379 \
   --cacert=/etc/kubernetes/pki/etcd/ca.crt \
   --cert=/etc/kubernetes/pki/etcd/server.crt \
   --key=/etc/kubernetes/pki/etcd/server.key \
   snapshot save /data/etcd-snapshot-previous.db


#7. Metrics-Server 설치 : https://github.com/kubernetes-sigs/metrics-server
# kubectl top 명령어 실행을 위해 구성
wget  https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
vi components.yaml
..
      containers:
      - args:
        - --cert-dir=/tmp
        - --secure-port=4443
        - --kubelet-insecure-tls

kubectl apply -f components.yaml

===END===

