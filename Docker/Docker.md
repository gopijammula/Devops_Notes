# Docker
Docker is an open source platform for developing shipping and runnig applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly
* Docker provides the ability to package and run an application in a loosely isolated environment called a container
* The isolation and security allows you to run many containers simultaneously on a given host
* Containers are lightweight and contain everything needed to run the application, so you do not need to rely on what is currently installed on the host
* You can easily share containers while you work, and be sure that everyone you share with gets the same container that works in the same way

## Docker architecture
* Docker uses a client-server architecture. 
* The Docker client talks to the Docker daemon, which does the heavy lifting of building, running, and distributing your Docker containers. 
* The Docker client and daemon can run on the same system, or you can connect a Docker client to a remote Docker daemon. 
* The Docker client and daemon communicate using a REST API, over UNIX sockets or a network interface. 
* Another Docker client is Docker Compose, that lets you work with applications consisting of a set of containers.
* [refer here](https://docs.docker.com/get-started/overview/#what-can-i-use-docker-for) for diagramatic reprasentation

### Docker daemon
* The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. 
* A daemon can also communicate with other daemons to manage Docker services.

### Docker Client
* The Docker client (docker) is the primary way that many Docker users interact with Docker. 
* When you use commands such as docker run, the client sends these commands to docker daemon, which carries them out. The docker command uses the Docker API. 
* The Docker client can communicate with more than one daemon.

### Docker registries
* A Docker registry stores Docker images. 
* Docker Hub is a public registry that anyone can use, and Docker is configured to look for images on Docker Hub by default. 
* You can even run your own private registry.

## Docker objects
=> The following are the major Docker objects 
* images
* containers
* networks
* volumes 
* plugins

### Images : 
* An image is a read only template with instructions for creating docker container

### Containers :
* container is a standard unit of software that packages code and all its dependencies to run an application quickly and reliably from one computing environment to other.
                        (or)
* Container is an isolated area created by container engine (docker) which has a lean os and application runs inside container.
* A container is a runnable instance of an image.
* and each container gets 
     * IP address
     * CPU
     * RAM

