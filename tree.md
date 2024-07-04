.
├── basic
│   ├── 10.configmap
│   │   ├── build
│   │   │   ├── Dockerfile
│   │   │   └── genid.sh
│   │   ├── config.dir
│   │   │   └── nginx-config.conf
│   │   ├── genid-volume.yaml
│   │   ├── genid-whole.yaml
│   │   ├── genid.yaml
│   │   └── text.file
│   ├── 11.secret
│   │   ├── genid-env-secret.yaml
│   │   ├── genid-volume-secret.yaml
│   │   └── genid-web-config
│   │       └── nginx-config.conf
│   ├── 12.schedule_taint
│   │   ├── deploy-nginx.yaml
│   │   ├── nodeselector.yaml
│   │   ├── pod-affinity.yaml
│   │   ├── pod-antiaffinity.yaml
│   │   ├── redis-ssd.yaml
│   │   ├── tensorflow-gpu-ssd.yaml
│   │   └── tensorflow-gpu.yaml
│   ├── 13.auth
│   │   ├── csr-myuser.yaml
│   │   ├── myuser.crt
│   │   ├── myuser.csr
│   │   ├── myuser.key
│   │   └── testpod.yaml
│   ├── 14.storage_pv_pvc
│   │   ├── empty.yaml
│   │   ├── hostpath.yaml
│   │   ├── nfs.yaml
│   │   ├── pv-hostpath.yaml
│   │   ├── pv.yaml
│   │   ├── pvc-pod-web.yaml
│   │   ├── pvc.yaml
│   │   ├── testpods.yaml
│   │   └── volume-hostpath.yaml
│   ├── 15.network
│   │   ├── deployment.yaml
│   │   └── svc.yaml
│   ├── 16.dns
│   │   ├── custom-dns.yaml
│   │   ├── deployment.yaml
│   │   └── svc.yaml
│   ├── 17.log
│   │   ├── 17-2_note
│   │   ├── 17-3_note
│   │   └── yamls
│   │       ├── grafana.yaml
│   │       ├── kube-state-metrics.yaml
│   │       ├── node-exporter.yaml
│   │       └── prometheus.yaml
│   ├── 18.autoscaling
│   │   ├── deploy_web.yaml
│   │   └── hpa_web.yaml
│   ├── 21.helm
│   │   ├── Helm_note
│   │   └── mynginx
│   │       ├── Chart.yaml
│   │       ├── templates
│   │       │   ├── deployment.yaml
│   │       │   └── service.yaml
│   │       └── values.yaml
│   ├── 5.pod
│   │   ├── init-container-exam-svc.yaml
│   │   ├── init-container-exam.yaml
│   │   ├── init-container-exam2.yaml
│   │   ├── liveness-exam.yaml
│   │   ├── pod-liveness.yaml
│   │   ├── pod-multi.yaml
│   │   ├── pod-mysql.yaml
│   │   ├── pod-nginx-env.yaml
│   │   ├── pod-nginx-liveness.yaml
│   │   ├── pod-nginx-resources.yaml
│   │   ├── pod-nginx.yaml
│   │   ├── redis.yaml
│   │   └── stress.yaml
│   ├── 6.controller
│   │   ├── cronjob-exam.yaml
│   │   ├── daemonset-exam.yaml
│   │   ├── deploy-nginx.yaml
│   │   ├── deployment-exam1.yaml
│   │   ├── deployment-exam2.yaml
│   │   ├── job-exam.yaml
│   │   ├── pod-redis.yaml
│   │   ├── rc-exam.yaml
│   │   ├── rc-lab1.yaml
│   │   ├── rc-nginx.yaml
│   │   ├── redis.yaml
│   │   ├── rs-exam1.yaml
│   │   ├── rs-nginx.yaml
│   │   └── statefulset-exam.yaml
│   ├── 7.service
│   │   ├── clusterip-nginx.yaml
│   │   ├── deploy-nginx.yaml
│   │   ├── external-name.yaml
│   │   ├── headless-nginx.yaml
│   │   ├── loadbalancer-nginx.yaml
│   │   ├── nodeport-nginx.yaml
│   │   └── service-nginx.yaml
│   ├── 8.ingress
│   │   ├── deploy.yaml
│   │   └── webserver-demo
│   │       ├── ingress
│   │       │   ├── ingress.yaml
│   │       │   ├── marvel-home.yaml
│   │       │   └── pay.yaml
│   │       ├── marvel-collection
│   │       │   ├── Dockerfile
│   │       │   └── html
│   │       │       ├── images
│   │       │       │   ├── category.png
│   │       │       │   └── marvel_logo.png
│   │       │       └── index.html
│   │       └── paymentjs
│   │           ├── Dockerfile
│   │           └── app.js
│   └── 9.label
│       ├── annotation.yaml
│       ├── deployment.yaml
│       ├── mainui-canary.yaml
│       ├── mainui-service.yaml
│       ├── mainui-stable.yaml
│       ├── nodeselector.yaml
│       ├── pod1.yaml
│       └── pod2.yaml
├── efk
│   ├── 00.elasticsearch-persistentvolume.yaml
│   ├── 01.namespace.yaml
│   ├── 02.elasticsearch-master-configmap.yaml
│   ├── 03.elasticsearch-master-service.yaml
│   ├── 04.elasticsearch-master-deployment.yaml
│   ├── 05.elasticsearch-data-configmap.yaml
│   ├── 06.elasticsearch-data-service.yaml
│   ├── 07.elasticsearch-data-statefulset.yaml
│   ├── 08.elasticsearch-client-configmap.yaml
│   ├── 09.elasticsearch-client-service.yaml
│   ├── 10.elasticsearch-client-deployment.yaml
│   ├── 11.kibana-configmap.yaml
│   ├── 12.kibana-service.yaml
│   ├── 13.kibana-deployment.yaml
│   ├── 14.fluentd-config-map.yaml
│   ├── 15.fluentd-daemonset.yaml
│   ├── elastic.txt
│   └── pv.yaml
├── ingress
│   ├── deploy.yaml
│   ├── gaon
│   │   ├── deploy-gaon-nginx.yaml
│   │   ├── deploy-gaon-web.yaml
│   │   ├── ingress-gaon.yaml
│   │   └── secret-gaon.yaml
│   ├── ingress.yaml
│   ├── service
│   │   ├── config.yaml
│   │   ├── configmap-gaon.yaml
│   │   ├── deploy-echo-test.yaml
│   │   ├── deploy-hello.yaml
│   │   ├── deploy-lb-test.yaml
│   │   ├── deploy-nihao.yaml
│   │   ├── deploy-sql.yaml
│   │   ├── deploy-ssl80.yaml
│   │   ├── deploy-zabbix.yaml
│   │   ├── ingress-echo-test.yaml
│   │   ├── ingress-lb-test.yaml
│   │   ├── ingress-ssl.yaml
│   │   ├── ingress-ssl80.yaml
│   │   ├── ingress-tls-ssl80.yaml
│   │   ├── ingress-zabbix.yaml
│   │   ├── ingress.yaml
│   │   ├── tls
│   │   │   ├── config.yaml
│   │   │   ├── config2.yaml
│   │   │   ├── configmap.yaml
│   │   │   ├── deploy-blue-sale.yaml
│   │   │   ├── deploy-blue.yaml
│   │   │   ├── deploy-green-food.yaml
│   │   │   ├── deploy-green.yaml
│   │   │   ├── deploy-lb-food.yaml
│   │   │   ├── deploy-lb-red.yaml
│   │   │   ├── deploy-lb-sale.yaml
│   │   │   ├── deploy-red.yaml
│   │   │   ├── deploy-tls.yaml
│   │   │   ├── deploy-worker2.yaml
│   │   │   ├── deploy.yaml
│   │   │   ├── ingress-controller.yaml
│   │   │   ├── ingress-master1.yaml
│   │   │   ├── ingress-nginx-controller.yaml
│   │   │   ├── ingress-nginx-controller1.yaml
│   │   │   ├── ingress-nginx-controller2.yaml
│   │   │   ├── ingress-nginx-controller3.yaml
│   │   │   ├── ingress-tls-lb.yaml
│   │   │   ├── ingress-tls-secret.yaml
│   │   │   ├── ingress-tls-svc.yaml
│   │   │   ├── ingress-worker1.yaml
│   │   │   ├── ingress-worker2.yaml
│   │   │   ├── metallb-native.yaml
│   │   │   ├── replicaset-test.yaml
│   │   │   ├── tls.crt
│   │   │   └── tls.key
│   │   └── traefik
│   │       ├── Changelog.md
│   │       ├── Chart.yaml
│   │       ├── EXAMPLES.md
│   │       ├── Guidelines.md
│   │       ├── LICENSE
│   │       ├── README.md
│   │       ├── VALUES.md
│   │       ├── crds
│   │       │   ├── hub.traefik.io_accesscontrolpolicies.yaml
│   │       │   ├── hub.traefik.io_apiaccesses.yaml
│   │       │   ├── hub.traefik.io_apiportals.yaml
│   │       │   ├── hub.traefik.io_apiratelimits.yaml
│   │       │   ├── hub.traefik.io_apis.yaml
│   │       │   ├── hub.traefik.io_apiversions.yaml
│   │       │   ├── hub.traefik.io_edgeingresses.yaml
│   │       │   ├── traefik.io_ingressroutes.yaml
│   │       │   ├── traefik.io_ingressroutetcps.yaml
│   │       │   ├── traefik.io_ingressrouteudps.yaml
│   │       │   ├── traefik.io_middlewares.yaml
│   │       │   ├── traefik.io_middlewaretcps.yaml
│   │       │   ├── traefik.io_serverstransports.yaml
│   │       │   ├── traefik.io_serverstransporttcps.yaml
│   │       │   ├── traefik.io_tlsoptions.yaml
│   │       │   ├── traefik.io_tlsstores.yaml
│   │       │   └── traefik.io_traefikservices.yaml
│   │       ├── dashboard.yaml
│   │       ├── ingressroute.yaml
│   │       ├── my-values.yaml
│   │       ├── templates
│   │       │   ├── NOTES.txt
│   │       │   ├── _helpers.tpl
│   │       │   ├── _podtemplate.tpl
│   │       │   ├── _service-metrics.tpl
│   │       │   ├── _service.tpl
│   │       │   ├── daemonset.yaml
│   │       │   ├── dashboard-ingressroute.yaml
│   │       │   ├── deployment.yaml
│   │       │   ├── extra-objects.yaml
│   │       │   ├── gateway.yaml
│   │       │   ├── gatewayclass.yaml
│   │       │   ├── healthcheck-ingressroute.yaml
│   │       │   ├── hpa.yaml
│   │       │   ├── hub-admission-controller.yaml
│   │       │   ├── hub-apiportal.yaml
│   │       │   ├── ingressclass.yaml
│   │       │   ├── poddisruptionbudget.yaml
│   │       │   ├── prometheusrules.yaml
│   │       │   ├── provider-file-cm.yaml
│   │       │   ├── pvc.yaml
│   │       │   ├── rbac
│   │       │   │   ├── clusterrole.yaml
│   │       │   │   ├── clusterrolebinding.yaml
│   │       │   │   ├── podsecuritypolicy.yaml
│   │       │   │   ├── role.yaml
│   │       │   │   ├── rolebinding.yaml
│   │       │   │   └── serviceaccount.yaml
│   │       │   ├── requirements.yaml
│   │       │   ├── service-metrics.yaml
│   │       │   ├── service.yaml
│   │       │   ├── servicemonitor.yaml
│   │       │   ├── tlsoption.yaml
│   │       │   └── tlsstore.yaml
│   │       ├── traefik-deploy.yml
│   │       └── values.yaml
│   ├── tls
│   │   ├── ingress-tls-ssl80.yaml
│   │   ├── rootca.crt
│   │   ├── rootca.csr
│   │   ├── rootca.key
│   │   ├── rootca.srl
│   │   ├── server.crt
│   │   ├── server.csr
│   │   ├── server.key
│   │   ├── server.pem
│   │   ├── tls.crt
│   │   └── tls.key
│   ├── udemy
│   │   ├── nginx-deployment.yaml
│   │   ├── pod.yaml
│   │   ├── test.yaml
│   │   └── test2.yaml
│   └── zabbix
│       ├── delpoy-zabbix.yaml
│       ├── ingress.yaml
│       ├── zabbix-ci.yaml
│       ├── zabbix-namespace.yaml
│       └── zabbix-test.yaml
├── study
│   ├── clusterip-deployment.yaml
│   ├── clusterip-pod.yaml
│   ├── clusterip-sales.yaml
│   ├── configmap-dev.yaml
│   ├── configmap-wordpress.yaml
│   ├── deploy.yaml
│   ├── deployment-cloud.yaml
│   ├── deployment-config01.yaml
│   ├── deployment-food.yaml
│   ├── deployment-sales.yaml
│   ├── deployment.yaml
│   ├── index.html
│   ├── ingress.yaml
│   ├── loadbalancer-deployment.yaml
│   ├── loadbalancer-pod.yaml
│   ├── mysql-deploy-svc.yaml
│   ├── nfs-pv.yaml
│   ├── nfs-pvc-deploy.yaml
│   ├── nfs-pvc.yaml
│   ├── nginx-pod.yaml
│   ├── nodeport-cloud-deployment.yaml
│   ├── nodeport-deployment.yaml
│   ├── nodeport-pod.yaml
│   ├── pv-pvc-pod.yaml
│   ├── replication-food.yaml
│   ├── secret.yaml
│   ├── wordpress-deploy-svc.yaml
│   └── ~
├── test.md
├── tree.md
└── udemy
    ├── crd
    │   ├── crd.txt
    │   ├── crd.yaml
    │   ├── custom-resource-definition.yaml
    │   └── my-crontab.yaml
    ├── helm
    │   ├── Helm_note
    │   └── mynginx
    │       ├── Chart.yaml
    │       ├── templates
    │       │   ├── deployment.yaml
    │       │   └── service.yaml
    │       └── values.yaml
    ├── hostpath.yaml
    ├── hpa
    │   ├── deploy_web.yaml
    │   └── hpa_web.yaml
    ├── network-policy
    │   ├── conntest.yaml
    │   ├── internal-policy.yaml
    │   └── network-policy.yaml
    ├── pod-sa
    │   ├── command.md
    │   ├── kubernetes.yaml
    │   ├── pod-projected-svc-tocken.yaml
    │   ├── pod.yaml
    │   ├── sa.yaml
    │   ├── serviceaccount-crb.md
    │   └── token.yaml
    ├── private-registry
    │   ├── imagepullsecrets.yaml
    │   └── registry.md
    ├── pvc
    │   ├── pv.yaml
    │   ├── pvc.yaml
    │   └── webapp.yaml
    ├── security-contexts
    │   └── securtycontext.yaml
    └── storageclass
        ├── delayed-volume-sc.yaml
        ├── local-pv.yaml
        ├── local-pvc.yaml
        ├── pv.yaml
        ├── pvc-pod.yaml
        ├── pvc.yaml
        ├── sc-pod.yaml
        └── sc.yaml

53 directories, 317 files
