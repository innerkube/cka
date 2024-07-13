

#  network config = kube-proxy config

```
// kube-proxy status

$ kubectl get pods -n kube-system


// kube-proxy config directory

$ kubectl describe ds -n kube-system kube-proxy

 Command:
      /usr/local/bin/kube-proxy
      --config=/var/lib/kube-proxy/config.conf  <--- correct directory
      --hostname-override=$(NODE_NAME)

// edit kube-config

$ kubectl edit ds -n kube-system kube-proxy


// check kube-config

$ vi ~/.kube/config

```



