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


