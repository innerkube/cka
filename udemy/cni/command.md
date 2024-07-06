

# inspect cni & kubelet
> ps -aux | grep kubelet | grep --color container-runtime-endpoint


# The CNI binaries are located under /opt/cni/bin by default.

> /opt/cni/bin

# Run the command: identify the one not present at that directory.

> ls /opt/cni/bin

# Run the command: identify the name of the plugin.

> ls /opt/cni/net.d/


# routing table inspect

>
- kubectl run testpod --image=wbitt/network-multitool
- kubectl exec -it testpod -- ip route


