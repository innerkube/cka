
# pod ip range 

kubectl logs <cni-pod-name> -n kube-system | grep ipalloc-range

# service ip range

cat /etc/kubernetes/manifests/kube-apiserver.yaml   | grep cluster-ip-range

