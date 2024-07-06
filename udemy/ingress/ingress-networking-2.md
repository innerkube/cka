

# ingress-nginx namespace create

> kubectl create ns ingress-nginx

# ingress-nginx configmap create

> kubectl -n ingress-nginx create configmap ingress-nginx-controller

# ingress-nginx ServiceAccount create

```
 kubectl -n ingress-nginx create sa ingress-nginx
 kubectl -n ingress-nginx create sa ingress-nginx-admission
```

# ingress-nginx Roles, RoleBindings, ClusterRoles, CluseterRoleBindings

# ingress-nginx-controller deployment create

> kubectl create -f ingress-controller.yaml
