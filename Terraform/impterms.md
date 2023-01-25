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