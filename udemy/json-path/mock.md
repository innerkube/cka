

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

cat q9.json | jpath '$.prizes[?(@.year == 2014)].laureates[*].firstname'

```


# etc

```

kubectl get nodes -o=jsonpath='{range.items[*]}{.metadata.name}{"\t"}{.status.capacity.cpu}{"\n"}{end}'
master1 2
worker1 2
worker2 2


kubectl get nodes -o=jsonpath=<COLUME NAME>:<JSON PATH>	

kubectl get nodes -o==jsonpath=NODE:.metadata.name
NODE
master
node01


kubectl get nodes -o=custom-columns=NODE:.metadata.name,CPU:.status.capacity.cpu
NODE      CPU
master1   2
worker1   2
worker2   2



```






