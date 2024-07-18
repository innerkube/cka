
# mock-exam static pod config 

1. create a static pod on node01
2. image=nginx
3. pod name = nginx-critical
4. recreated/restarted automatically in case of a failure
5. static pod path :  /etc/kubernetes/manifests

# command 

```
$ kubectl run nginx-critical --image=nginx --restart=Always --dry-run=client -o wide > nginx-critical.yaml
```

# node01 static config

```
$ ssh node01
$ cat > /etc/kubernetes/manifests/nginx-critical.yaml
```

