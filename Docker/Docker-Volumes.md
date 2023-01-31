Docker volumes are a way to store data outside of a Docker container's filesystem. They allow data to persist even if the container is deleted, and can be used to share data between containers. Volumes can be created and managed using the `docker volume` command.
* [refer here](https://github.com/rajnikanth1999/cloud/blob/main/DevOps/Docker/volumes.md) for more info
* [refer here](https://directdevops.blog/2022/11/22/devops-classroomnotes-22-nov-2022/) for class room notes
* docker containers loose its data once it is destroyed. So we will loose all the data stored in the container.
* to store the data we have volumes in docker.
* We can create a volumes and mount it to the container so that whatever the data inside the container will be stored in the local system and can be accessed to the container.
* To create volume 

        docker volume create <volume-name>
* To inspect the volume

        docker volume inspect <volume-name>
* To remove the volume

        docker volume rm <vol-name>
* To attach the volume to the container

        docker container run --name <container-name> --mount "source=<vol-name>,target=<target-folder-in container>" <image-name>
* To list all the volumes

        docker volume ls
* Example: mount any volume to the MYSQL image to create container

        docker container run --name mysql -d -P --mount "source=mysql,target=/var/lib/mysql" -e "MYSQL_ROOT_PASSWORD=root" -e "MYSQL_USER=docker" -e "MYSQL_PASSWORD=docker@123" -e "MYSQL_DATABASE=docker" mysql