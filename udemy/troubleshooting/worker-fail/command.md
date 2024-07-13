


# worker-node-fail

``
// worker-node health-check

$ kubeclt describe node node01

// If they are NotReady then check the LastHeartbeatTime of the node to find out the time when node might have crashed
// Check the possible CPU and MEMORY using top and df -h
// Check the status and the logs of the kubelet for the possible issues.

$ systemctl status kubelet
$ service kubelet status

// kubelet detailed status

$ sudo journalctl -u kubelet

// Check the kubelet Certificates, they are not expired, and in the right group and issued by the right CA.

$ vi /var/lib/kubelet/config.yaml > check this

$ openssl x509 -in /var/lib/kubelet/worker-1.crt -text


```



# worker-node kubelet config

```
$ vi /etc/kubernetes/kubelet.conf


// fix edit

apiVersion: v1
clusters:
- cluster:
    certificate-authority-data:
    --REDACTED---
    server: https://controlplane:6443


$ systemctl restart kubelet

```


