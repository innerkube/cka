


# mock-exam cluster-role

1. create serviceaccount

```
$ kubectl create sa pvviewer
```

2. create ClusterRole - pvviewer-role

```
kubectl create clusterrole pvviewer-role --verb=list --resource=persistentvolumes

```

3. create ClusterRoleBinding
```
kubectl create clusterrolebinding pvviewer-role-binding --clusterrole=pvviewer-role --serviceaccount=default:pvviewer
```

4. create pod 

```
kubectl run pvviewer --image=redis --dry-run=client -o yaml > pvviewer.yaml
```

5. serviceaccount add to the pod of pvviewer

```
apiVersion: v1
kind: Pod
metadata:
  name: pvviewer
spec:
  serviceAccountName: pvviewer  

```




