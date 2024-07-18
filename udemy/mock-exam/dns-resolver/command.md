
# mock-exam dns-resolver

1. create pod

```
$ kubectl run nginx-resolver --image=nginx
```
2. create service

```
$ kubectl expose pod nignx-resolver --name=nginx-resolver-serivce --port=80
```

3. nslookup test pod create

```
$ kubectl run busybox --image=busybox:1.28 -- sleep 4000
```

4. test serivce nslookup exec 

```
$ kubectl exec busybox -- nslookup nginx-resolver-service > /root/CKA/nginx.svc  // serivce name nslookup

```

5. test pod nslookup exec

```
$ kubectl exec busybox -- nslookup 10-244-30-3.default.pod.cluster.local > /root/CKA/nginx.pod  // pod ip nslookup

```

