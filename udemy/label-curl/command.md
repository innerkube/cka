

# pod label command

```
kubectl run test --image=nginx -l run=nginx-resolver
```


# curl's pod create

```
kubectl run curl --image=alpine/curl --rm -it -- sh

```

# test pod service create

```

kubectl expose pod test --port=80 --target-port=80

```



# curl test

```
curl test-service
```








 
