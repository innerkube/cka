Q. 1

Task


Q. 2

Task
Deploy a messaging pod using the redis:alpine image with the labels set to tier=msg.

Solution
Use the command kubectl run messaging --image=redis:alpine -l tier=msg

Details

Pod Name: messaging

Image: redis:alpine

Labels: tier=msg

Q. 3

Task
Create a namespace named apx-x9984574.

Q. 4

Task
Get the list of nodes in JSON format and store it in a file at /opt/outputs/nodes-z3444kd9.json.

Solution
Run the command: kubectl get nodes -o json > /opt/outputs/nodes-z3444kd9.json

Details

Q. 5

Task
Create a service messaging-service to expose the messaging application within the cluster on port 6379.

Use imperative commands.

Q. 6

Task
Create a deployment named hr-web-app using the image kodekloud/webapp-color with 2 replicas.

Q. 7

Task
Create a static pod named static-busybox on the controlplane node that uses the busybox image and the command sleep 1000.

Q. 8

Task
Create a POD in the finance namespace named temp-bus with the image redis:alpine.

Q. 9

Task
A new application orange is deployed. There is something wrong with it. Identify and fix the issue.

Solution
To know more details of orange pod:

kubectl describe po orange

and look under the initContainers section. There is an issue with the given command.


 Command:
      sh
      -c
      sleeeep 2;



In the above, we need to correct the sleeeep command.

To update the pod with an easiest way by running command:

kubectl edit po orange

It's not possible to update the changes in the running pod so after saving the changes. It will create a temporary file in the default location /tmp/.

Use that manifest file and replace with the existing pod:

kubectl replace -f /tmp/kubectl-edit-xxxx.yaml --force

Above command will delete the existing pod and will recreate the new pod with latest changes.

Details

Issue fixed

Q. 10

Task
Expose the hr-web-app as service hr-web-app-service application on port 30082 on the nodes on the cluster.

The web application listens on port 8080.

Solution
Run the command: kubectl expose deployment hr-web-app --type=NodePort --port=8080 --name=hr-web-app-service --dry-run=client -o yaml > hr-web-app-service.yaml to generate a service definition file.

Now, in generated service definition file add the nodePort field with the given port number under the ports section and create a service.

Details

Name: hr-web-app-service


Type: NodePort


Endpoints: 2


Port: 8080


NodePort: 30082

Q. 11

Task
Use JSON PATH query to retrieve the osImages of all the nodes and store it in a file /opt/outputs/nodes_os_x43kj56.txt.

The osImages are under the nodeInfo section under status of each node.

Solution
Run the command: kubectl get nodes -o jsonpath='{.items[*].status.nodeInfo.osImage}' > /opt/outputs/nodes_os_x43kj56.txt

Details

Task Completed

Q. 12

Task
Create a Persistent Volume with the given specification: -

Volume name: pv-analytics

Storage: 100Mi

Access mode: ReadWriteMany

Host path: /pv/data-analytics

Solution
Solution manifest file to create a persistent volume pv-analytics as follows:

---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-analytics
spec:
  capacity:
    storage: 100Mi
  volumeMode: Filesystem
  accessModes:
    - ReadWriteMany
  hostPath:
      path: /pv/data-analytics

Details

Is the volume name set?


Is the storage capacity set?


Is the accessMode set?


Is the hostPath set?
