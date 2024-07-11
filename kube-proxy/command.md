

# kube-proxy set


```
1. ipvs set

// 현재 kube-proxy 설정을 ConfigMap에서 확인합니다.

kubectl get configmap -n kube-system kube-proxy -o yaml > kube-proxy-config.yaml


// kube-proxy-config.yaml 파일을 편집하여 mode를 iptables로 변경합니다.
 
apiVersion: v1
kind: ConfigMap
metadata:
  name: kube-proxy
  namespace: kube-system
data:
  config.conf: |
    apiVersion: kubeproxy.config.k8s.io/v1alpha1
    kind: KubeProxyConfiguration
    mode: "iptables"
    # 다른 설정들...

```


# Configmap update

```
kubectl apply -f kube-proxy-config.yaml
```


#  kube-proxy DaemonSet 업데이트 및 재시작

```

$ kubectl rollout restart daemonset/kube-proxy -n kube-system


// check

$ kubectl get pods -n kube-system -l k8s-app=kube-proxy


```




