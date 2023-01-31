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
* To see the container running in the docker host

        docker container ls
* to see the status of all the containers created by docker host which are not deleted

        docker container ls --all
* to know the cpu/RAM utilization

        docker stats
* to run the container in the background mode (detached mode) we use -d and -p for port forwording

        docker container run -p 8081:80 -it ubuntu:22.04 /bin/bash
* To access the application

         http://<ip of docker host>:<port>
* create a docker image from running container in the docker host
  * This approach creates images but no history of changes are available.

        docker commit <container-name/id>
        
* to pass environment variables

        docker container run -e "TEST=hai" <image>
* To run Docker-compose file

        docker compose up -d
* 