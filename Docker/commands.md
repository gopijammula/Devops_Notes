* To see the container running in the docker host
        
        docker container ls
* to see the status of all the containers created by docker host which are not deleted

        docker container ls -a
* TO set the container name

        docker container run --name <container name> <image:tag>
* Execute `docker stats` to know the cpu/RAM utilization
* list all the process `ps` or `ps aux`
* get the ip address `ip addr` or `ifconfig`
* Explore storage ` df -h` & `lsblk`
* Lets create a container and login into that` docker container run -it alpine /bin/sh`
* to run the container in the background mode (detached mode) we use `-d`
* To tag image name

        `docker image tag <container id> name`
 