

# kube-proxy type

```
cat /var/log/pods/xxxx.log
cat /var/log/pods/kube-system_kube-proxy-rv44f_21269969-008e-4d91-b633-487a3c4db989/kube-proxy/0.log
``

# kube-proxy controlle by demonset

```
kubectl -n kube-system describe kube-proxy-xxxxx | grep controll
```

