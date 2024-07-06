

# core-dns config file location

```
kubectl -n kube-system describe deployments.apps coredns | grep coredns
kubectl -n kube-system describe pod coredns-768b85b76f-2sxpr | grep cordns
```

# corefile pass into CoreDNS POD

```

kubectl get configmap -n kube-system

---
NAME                                                   DATA   AGE
coredns                                                1      22m
extension-apiserver-authentication                     6      22m
kube-apiserver-legacy-service-account-token-tracking   1      22m
kube-proxy                                             2      22m
kube-root-ca.crt                                       1      22m
kubeadm-config                                         1      22m
kubelet-config                                         1      22m
---


kubectl describe configmaps coredns -n kube-system 

---
Name:         coredns
Namespace:    kube-system
Labels:       <none>
Annotations:  <none>

Data
====
Corefile:
----
.:53 {
    errors
    health {
       lameduck 5s
    }
    ready
    kubernetes cluster.local in-addr.arpa ip6.arpa {
       pods insecure
       fallthrough in-addr.arpa ip6.arpa
       ttl 30
    }
    prometheus :9153
    forward . /etc/resolv.conf {
       max_concurrent 1000
    }
    cache 30
    loop
    reload
    loadbalance
}


BinaryData
====

Events:  <none>

---
```

# From the hr pod nslookup the mysql service and redirect the output to a file /root/CKA/nslookup.out

```
kubectl exec -it hr -- nslookup mysql.payroll > /root/CKA/nslookup.out
```





