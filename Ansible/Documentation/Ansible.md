# Ansible
* Ansible is an open source software developed in python.
* Ansible automates the management of remote systems and controll their desired states
* The Desired state is written in YAML and is called as Playbook.
* basic ansible environment has 3 main components 

    1. Ansible controll node (a system on which ansible installed)
    2. Managed node (remote system)
    3. Inventory
### INventory
* A list of managed nodes that are logically organised
* The nodes where the playbook has to be executed, this is referred as inventory
* create an inventory on the control node to describe host deployments to Ansible
### Ansible Playbooks
* Playbooks are written in YAML and are easy to read, write, share and understand
* They contain Plays (which are the basic unit of Ansible execution).
  
    * where the play has to be executed
    * which user should be executing the work
    * list of modules to perform your automation where we describe the desired state
### Modules
* [refer here](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/index.html#plugins-in-ansible-builtin) for the list of modules in ansible
