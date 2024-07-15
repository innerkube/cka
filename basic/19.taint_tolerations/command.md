

# taint command

```
// Node Taint 기본 명령
kubectl taint node {nodename} {key}={value}:{option}
```
# taint command description

```
nodename : Taint 설정을 할 nodename
key=value : Taint에 대한 Tolerations value
option : Taint에 대한 역할 제한이다. 일반적으로NoSchedule, PreferNoschedule, NoExecute 3가지 설정이 존재한다.
  NoSchedule : Pod를 해당 Node에 Schedule 할 수 없다. 단, 기존 실행되던 Pod에는 적용안된다.
  PreferNoschdule : Pod를 해당 Node에 Schedule 할 수 없다. 다만, NoSchedule과는 다르게 필수값이 아니다.
                    즉, Cluster 내의 자원이 부족하거나 특정 상황에 따라서는 Taint 설정된 Node에 Pod이 배포될 수 있다.
  NoExecute : Pod에 대해 Toleration 설정이 없으면, Schedule 되지 않고 기존에 실행되던 Pod도 Delete 된다
```


# taint delete

``
kubectl taint node worker01 app=nginx:NoSchedule-
```

# Toleration command

> Taint 설정이 되어있더라도 해당 Taint에 부합하는 value를 Pod Tolerations에 지정하면 해당 Node에 Schedule 될 수 있다.

```
[node01 Taint 명령어]
kubectl taint node node01 app=nginx:NoSchedule

[node01 pod toleration yaml 파일]
apiVersion: v1
kind: Pod
metadata:
  name: taint-test
  ...
spec:
  tolerations:
  - effect: NoSchedule
    key: app
    value: nginx
  - ...
  ...
```




