* To view the api resources

      kubectl api-resources

* to get pods with specified labels

      kubectl get po -l app=nginx  (here app=nginx is label we mentioned)
  [refer here](https://directdevops.blog/2022/12/03/devops-classroomnotes-03-dec-2022-2/) for more info

* To scale a resource

      kubectl scale rs < name of replica set > --replicas=2

* Getting inside Containers
      
      kubectl exec -it <pod-name> -- <shell /bin/bash /bin/sh>
* execute command inside the container 
  
      kubectl exec <pod-name> -- <linux command>
* accessing through cluster IP

      #first go inside the any pod of the cluster then execute
      curl http://<clusterIP of the service>:port
* accessing through service name

      curl http://<service name>:port

* To Apply a Kubernetes configuration file to a running cluster

      kubectl apply -f <`yaml file name`>

* To continuously monitor changes to resources in the cluster.

      kubectl get pods -w

* To describe the pod details
  * Some of the information provided by the kubectl describe pods command includes:
 
  * Pod state: The current state of the pod, including whether it is running, pending, or terminated.
  * Containers: Details about the containers running inside the pod, including their image, command, and ports.
  * Volumes: Information about the volumes mounted inside the pod, including their type and mount paths.
  * Networking: Information about the network configuration of the pod, including its IP address, service name, and network policies.

             kubectl describe pods <pod-name>

* To retrieves the YAML representation of the pod

      kubectl get pods <pod name> -o yaml