Docker networking allows containers to communicate with each other and with the host system. By default, each container has its own isolated network stack and can only access the network through the host system.

* Docker provides several options for configuring network connections between containers, including:

    1. Bridge Networking: This is the default network type in Docker and provides basic network connectivity between containers on a single host.

    2. Host Networking: This mode connects a container directly to the host network stack, bypassing the network isolation provided by Docker.

    3. Overlay Networking: This type of network allows containers to communicate with each other across multiple hosts in a Docker swarm.

    4. Macvlan Networking: This mode allows containers to have their own unique MAC addresses and directly connect to the physical network.
* When we create containers in the docker they are attached to the default Network called bridge.
* This bridge Network is acts as network interface of the containers.
* The containers created or attached to this bridge network can connect each other using ipaddress but not using dns `Domain Name System`.
* To chech no of bridges/networks present in the docker

        docker network ls
* To inspect the bridge network to check the containers attached to it.

        docker network inspect <name of network>
* To ping containers in the same bridge network

        docker exec <container1-name> ping -c 4 <ipaddress of another container>
* To create our own bridge network

        docker network create -d bridge --subnet "10.0.0.0/24" <name u want>
* create container using bridge network

        docker container run -d --name <name of container> --network <name of bridge network> alpine sleep 1d
* change the network of an existing container

        docker network connect <network-name> <container-name>
* Disconnect container from a network

        docker network disconnect <network-name> <container-name>
