

# Task

```

List the InternalIP of all nodes of the cluster. Save the result to a file /root/CKA/node_ips.

Answer should be in the format: InternalIP of controlplane<space>InternalIP of node01 (in a single line)

```

# json exchange

```
kubectl get nodes -o json | jq -c 'path' | grep type | grep -v condition

> ...


kubectl get nodes -o jsonpath='{.items[0],status.address}` | jq

> ...


```

# solution

```
kubectl get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="InternalIP")].address}' > /root/CKA/node_ips
```





