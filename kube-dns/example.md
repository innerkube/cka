

# create pod
```
 kubectl run nginx-resolver --image=nginx
```

# create service 
```
 kubectl expose pod nginx-resolver --name nginx-resolver-service --port=80 --targetport=80
```

# DNS resolve test pod create
```
 kubectel run test --image=busybox:stable -rm -it --restart=Naver -- /bin/sh
```

# dns records objects

>
- 1. pod
- 2. service


# domain resolve

>  DNS queries may be expanded using the Pod's /etc/resolv.conf  <-- dns server info

```
Service : service-name.namespace-name.svc.cluster.local

```
# service nslookup

```
nslookup nginx-reolver-service.namespace-name.svc.cluster.local
nslookup 10.105.34.43 
```

# Pod nslookup

```
nslookup 172-16-235-143.namespace-name.pod.cluster.local
```






