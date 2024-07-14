

# rolling update 

```
kubect set image deployment nginx nginx=nginx:1.11.13-alpine --recore=true
```

# rollback 

```
kubectl rollout undo deployment/nginx
```

# rollback status

```
kubectl rollback status deployment/nginx
```



# rollback history

```
kubectl rollout history deployment nginx

deployment.apps/nginx 
REVISION  CHANGE-CAUSE
1         <none>
2         kubectl set image deployment nginx nginx=nginx:1.11.13-alpine --record=true
3         kubectl set image deployment nginx nginx=nginx:1.11.13-alpine --record=true
4         kubectl set image deployment nginx nginx=nginx:1.11.13-alpine --record=true
9         kubectl set image deployment nginx nginx=nginx:1.20.0-alpine --record=true
10        kubectl set image deployment nginx nginx=nginx:1.21.0-alpine --record=true
11        kubectl set image deployment nginx nginx=nginx:1.22.0-alpine --record=true
12        kubectl set image deployment nginx nginx=nginx:1.11.13-alpine --record=true

```


# rollback revision

```
kubectl rollout undo deployment/nginx --to-revision=10
```



 



