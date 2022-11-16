resource "azurerm_resource_group" "rg" {

  name     = "lakshayrg12"

  location = "East US"

}

 

resource "azurerm_container_registry" "ACR" {

  name                = "lakacr12345"

  resource_group_name = azurerm_resource_group.rg.name

  location            = azurerm_resource_group.rg.location             

  sku                 = "Standard"

}

 

resource "azurerm_kubernetes_cluster" "AKS" {

  name                = "lakaks12345"

  location            = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  dns_prefix          = "exmaple1234"

 

  default_node_pool {

    name       = "default12"

    node_count = 2

    vm_size    = "Standard_D2_v2"

  }

 

  identity {

    type = "SystemAssigned"

  }

 

  tags = {

    Environment = "Test"

  }

}