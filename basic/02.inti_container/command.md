

# control-plane-fail


## kube-schedule
```
$ kubectl get pods -n kube-system 
$ vi /etc/kubernetes/manifests/kube-scheduler.yaml

when pod create fail or pending status, check it 
```


## kube-control-manager

```
$ kube scale deploy app --replicas=2

// when replicas scale fail, check it

$ vi /etc/kubernetes/manifests/kube-control-manager.yaml

```



