
If the requirement does not match any of the configured paths in the Ingress, to which service are the requests forwarded?

# command

```
 kubectl get deploy ingress-nginx-controller -n ingress-nginx -o yaml
 kubectl describe ingress -n app-space
 
 kubectl describe deployments.apps ingress-nginx -n ingress-nginx

  => --default-backend-service=app-space/default-backend-service

```
