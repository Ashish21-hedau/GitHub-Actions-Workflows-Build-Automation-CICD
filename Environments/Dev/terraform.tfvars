main_rgs = {
  "rg" = {
    name     = "rg-elearn-dev"
    location = "westus"
  }
  
}
main_stgs = {
  "stg" = {
    name                     = "stelearndev2026xya"
    account_replication_type = "LRS"
    account_tier            = "Standard"
    location                = "westus"
    resource_group_name      = "rg-elearn-dev"
  }
  
}
main_vnets = {
  "vnet" = {
    name                = "vnet-elearn-dev"   
    location            = "westus"
    address_space=["10.0.0.0/24"]
    resource_group_name = "rg-elearn-dev"
    
  }
}

main_subnets = {
  "subnet" = {
    name                = "frontend-subnet-elearn-dev"
    resource_group_name = "rg-elearn-dev"
    virtual_network_name = "vnet-elearn-dev"
    address_prefixes=["10.0.0.0/26"]
   
  }
    "subnet1" = {
    name                = "backend-subnet-elearn-dev"
    resource_group_name = "rg-elearn-dev"
    virtual_network_name = "vnet-elearn-dev"
         address_prefixes=["10.0.0.64/26"]
  }
}


main_vms = {
  "vm" = {vm_name="frontend-vm-elearn-dev"
    location            = "westus"
    resource_group_name = "rg-elearn-dev"
    virtual_network_name = "vnet-elearn-dev"
    subnet_name         = "frontend-subnet-elearn-dev"
    admin_username      = "Ashish51"
    admin_password      = "Ashish@#21051990"
    nic_name             = "frontend-nic-elearn-dev"
    vm_size             = "Standard_D2s_v3"
    ip_configuration= {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
    }
    
  }
    "vm2" = {vm_name="backend-vm-elearn-dev"
    location            = "westus"
    resource_group_name = "rg-elearn-dev"
    virtual_network_name = "vnet-elearn-dev"
    subnet_name         = "backend-subnet-elearn-dev"
    admin_username      = "Ashish52"
    admin_password      = "Ashish@#21051990"
    nic_name             = "backend-nic-elearn-dev"
    vm_size             = "Standard_D2s_v3"
    ip_configuration= {
      name                          = "ipconfig2"
      private_ip_address_allocation = "Dynamic"
    }
    
  }
}