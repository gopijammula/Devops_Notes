## Provider
A provider is a plugin that interacts with a specific service provider's API to manage resources. Provider tells terraform where do you want to create the infra, Generally there will be authentication details as well.
* Providers are responsible for creating, reading, updating, and deleting resources.
* Terraform supports many providers out of the box, including popular cloud providers such as Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP), as well as on-premises and other infrastructure
## Resource
In Terraform, a resource is a block of configuration that describes a specific infrastructure object, such as a virtual machine, database, or load balancer.
## Virtual Network
A virtual network (VNet) in Azure is a representation of your own network in the cloud. It is a logically-isolated section of Azure where you can launch Azure resources and define subnets, access control, and network routing.
* A VNet allows you to create your own IP address range, and then sub-divide it into subnets. 
* Each subnet can be associated with a network security group (NSG) to control inbound and outbound network traffic.
* You can also configure routing between subnets and to on-premises networks using Azure Virtual Network Gateway or Azure ExpressRoute.
* You can also use VNet to allow Azure resources to communicate with each other without going over the internet. This helps to increase security, reduce latency and improve performance.
## Terraform order of Creation
* Terraform first creates all the resources that have no dependencies on other resources, in alphabetical order by resource type and then by resource name.
* Next, Terraform creates resources that have dependencies on resources that have already been created.
* Finally, Terraform updates resources that already exist in the Terraform state file, in the order that they are defined in the configuration files.
## Attribute
An attribute is a value or piece of data associated with a resource. Attributes can be used to retrieve information about the state of a resource after it has been created, such as its current IP address or the number of instances in a scaling group.

## count:
In Terraform, count is a meta-argument that allows you to create multiple instances of a resource, based on a numeric value. count can be used to create multiple copies of the same resource with different names or settings, based on a single configuration block.

The count meta-argument is used to specify the number of instances of a resource that should be created. The value of count can be either a number or a reference to a variable that contains a number.

## Taint:
* In Terraform we have options to taint

* Taint: During next apply delete and recreate the resource.

* syntax for taint is

         terraform taint <resource_type>.<resource_name>

* To unmark a resource tainted for replacement we can untaint before next terraform appply to undo the taint. 

## Terraform Provisioning:
 * [refer here](https://directdevops.blog/2022/10/29/devops-classroomnotes-29-oct-2022/) for class room notes

        resource "azurerm_virtual_machine" "example" {
            name                  = "example-vm"
            location              = "eastus"
            resource_group_name   = "example-rg"
            network_interface_ids = [azurerm_network_interface.example.id]
            vm_size               = "Standard_DS1_v2"

            storage_image_reference {
                publisher = "Canonical"
                offer     = "UbuntuServer"
                sku       = "16.04-LTS"
                version   = "latest"
            }

            storage_os_disk {
                name              = "example-os-disk"
                caching           = "ReadWrite"
                create_option     = "FromImage"
                managed_disk_type = "Standard_LRS"
            }
            }

        resource "azurerm_network_interface" "example" {
            name                = "example-nic"
            location            = "eastus"
            resource_group_name = "example-rg"

            ip_configuration {
                name                          = "example-ip-config"
                subnet_id                     = azurerm_subnet.example.id
                private_ip_address_allocation = "Dynamic"
            }
            }

        resource "azurerm_subnet" "example" {
            name                 = "example-subnet"
            resource_group_name  = "example-rg"
            virtual_network_name = azurerm_virtual_network.example.name
            address_prefix       = "10.0.1.0/24"
            }

        resource "azurerm_virtual_network" "example" {
            name                = "example-network"
            location            = "eastus"
            resource_group_name = "example-rg"
            address_space       = ["10.0.0.0/16"]
            }

        resource "null_resource" "example" {
            provisioner "local-exec" {
                command = "echo 'Hello, world!'"
            }

            depends_on = [
                azurerm_virtual_machine.example
            ]
            }


## Terraform Backend:
In Terraform, a backend is a configuration that defines where Terraform stores its state files, which are used to keep track of the current state of your infrastructure. By default, Terraform stores the state files locally on your machine, but using a remote backend is recommended for production environments or when working in a team.

A remote backend can be any external system that can store and retrieve Terraform state files, such as Amazon S3, Azure Blob Storage, or HashiCorp Consul. When Terraform is used with a remote backend, it will automatically store and retrieve state files from the remote system, which allows multiple team members to collaborate on the same infrastructure.

To configure a remote backend in Terraform, you can add a backend block to your configuration file. The configuration for a backend will vary depending on the type of backend you are using, but here is an example of how to configure an Azurerm backend in Terraform:
        
        terraform {
        backend "azurerm" {
            resource_group_name  = "terraformbackened"
            storage_account_name = "qtterraformbackend"
            container_name       = "terraformstate"
            key                  = "ntier.tfstate"
        }
        }
