
# backup etcd
```
ETCDCTL_API=3 etcdctl  snapshot save <backup-file-location> (ex: /etc/etcd-snapshot.db) \
  --cacert=<trusted-ca-file> \
  --cert=<cert-file> \
  --key=<key-file> \
```


# sample
```
ETCDCTL_API=3 etcdctl snapshot save /etc/etcd-snapshot.db \
--cacert /etc/kubernetes/pki/etcd/ca.crt \
--cert /etc/kubernetes/pki/etcd/server.crt \
--key /etc/kubernetes/pki/etcd/server.key
```
