resource "azurerm_resource_group" "rsg" {
  name     = "gopiterraformcluster"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "gopi-aks1"
  location            = azurerm_resource_group.rsg.location
  resource_group_name = azurerm_resource_group.rsg.name
  dns_prefix          = "gopiaks1"

  default_node_pool {
    name       = "gopinode1"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
