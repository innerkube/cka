
# configmap create

> kubectl create configmap NAME [--from-file=source] or [--from-literal=key1=value1] 

<img width="790" alt="configmap" src="https://github.com/innerkube/cka/assets/171396459/fe95b772-5e01-4543-8a25-0551fe3313a7">

```

// configmap key-value apply
$ kubectl create configmap CONFIG_NAME --from-literal=id-b20221002 --from-literal-class-bigdata

// configmap file apply
$ kubectl create configmap CONFIG_NAME --from-file=text.file
$ kubectl create configmap CONFIG_NAME --from-file=mydata=text.file

// configmap volume directory apply
$ kubectl create configmap CONFIG_NAME --from-file=/configmap.dir/

```

# configmap : ttabea-config

<img width="790" alt="configmap2" src="https://github.com/innerkube/cka/assets/171396459/1491a12e-5d24-40d1-8dbc-9d6a2a43b3b6">

```
$ kubectl create configmap ttabae-config \
--from-literal=INTERVAL=2 --from-literal=OPTION=boy --from-file=config.dir/

```


# configmap pod (key-value)

```
spec:
  containers:
  - image: smlinux/genid:env
    env:
    - name: INTERVAL
      valueFrom:
        configMapKeyRef:
          name: ttabae-config
          key: INTERVAL          
```

# configmap pod - file

```
spec:
  containers:
  - image: smlinux/genid:env
    envFrom:
    - configMapRef:
        name: ttabae-config
    name: fakeid
    volumeMounts:
    - name: html
      mountPath: /webdata
- image: nginx:1.14
    name: web-server
    volumeMounts:
    - name: html
      mountPath: /usr/share/nginx/html
      readOnly: true
    ports:
    - containerPort: 80
  volumes:
  - name: html
    emptyDir: {}
```

# configmap - volume

```
spec:
  containers:
  - image: smlinux/genid:env
    env:
    - name: INTERVAL
      valueFrom:
        configMapKeyRef:
          name: ttabae-config
          key: INTERVAL
    name: fakeid-generator
    volumeMounts:
    - name: html
      mountPath: /webdata
  - image: nginx:1.14
    name: web-server
    ports:
    - containerPort: 80
    volumeMounts:
    - name: html
      mountPath: /usr/share/nginx/html
      readOnly: true
    - name: config
      mountPath: /etc/nginx/conf.d
      readOnly: true
  volumes:
  - name: html
    emptyDir: {}
  - name: config
    configMap:
      name: ttabae-config
      items:
      - key: nginx-config.conf
        path: nginx-config.conf

```


# configmap pod 의 container 

```
// volume directory find

kubectl exec -it genid-volume -c web-server -- /bin/bash
```







