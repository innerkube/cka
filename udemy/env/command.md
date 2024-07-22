

# Task

```
Create a pod called multi-pod with two containers.
Container 1: name: alpha, image: nginx
Container 2: name: beta, image: busybox, command: sleep 4800

Environment Variables:
container 1:
name: alpha

Container 2:
name: beta
```

# Solution
Solution manifest file to create a multi-container pod multi-pod as follows:

```
kubectl run multi-pod --image=nginx --dry-run=client -o yaml > multi-pod.yaml

```





```
---
apiVersion: v1
kind: Pod
metadata:
  name: multi-pod
spec:
  containers:
  - image: nginx
    name: alpha
    env:
      - name: name
      value: alpha
  - image: busybox
    name: beta
    command: ["sleep", "4800"]
    env:
      - name: name
        value: beta
```


