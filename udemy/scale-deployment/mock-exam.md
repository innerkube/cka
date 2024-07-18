
# Task

```
We have created a new deployment called nginx-deploy. scale the deployment to 3 replicas. 
Has the replica's increased? Troubleshoot the issue and fix it

```


# Solution

```
kubectl scale deploy nginx-deploy --replicas=3


kubectl get pods -n kube-system

sed -i 's/kube-contro1ler-manager/kube-controller-manager/g' /etc/kubernetes/manifests/kube-controller-manager.yaml

kubectl get deploy

```




