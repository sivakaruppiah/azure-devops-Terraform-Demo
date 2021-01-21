provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you're southing version 1.x, the "features" block is not allowed.
    version = "~>2.0"
    features {}

  # More information on the authentication methods supported by
  # the AzureRM Provider can be found here:
  # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

  # subscription_id = "..."
  # client_id       = "..."
  # client_secret   = "..."
  # tenant_id       = "..."  
}


resource "azurerm_sql_server" "test" {
  name                         = "terraform-sqlserver-azuredevops"
  resource_group_name          = azurerm_resource_group.RG-Terraform.name
  location                     = azurerm_resource_group.RG-Terraform.location
  version                      = "12.0"
  administrator_login          = "houssem"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

