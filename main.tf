
# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

import {
  to = azurerm_storage_account.firefly45e6a8f09e38482a-d31
  id = "/subscriptions/45e6a8f0-9e38-482a-aaf4-0a48bec0770b/resourceGroups/firefly/providers/Microsoft.Storage/storageAccounts/firefly45e6a8f09e38482a"
}

import {
  to = azurerm_storage_account.cs21003200344c4486f-3ae
  id = "/subscriptions/45e6a8f0-9e38-482a-aaf4-0a48bec0770b/resourceGroups/cloud-shell-storage-eastus/providers/Microsoft.Storage/storageAccounts/cs21003200344c4486f"
}

import {
  to = azurerm_resource_group.cloud-shell-storage-eastus-260
  id = "/subscriptions/45e6a8f0-9e38-482a-aaf4-0a48bec0770b/resourceGroups/cloud-shell-storage-eastus"
}

import {
  to = azurerm_resource_group.firefly-d5f
  id = "/subscriptions/45e6a8f0-9e38-482a-aaf4-0a48bec0770b/resourceGroups/firefly"
}

import {
  to = azurerm_resource_group.DefaultResourceGroup-EUS-85d
  id = "/subscriptions/45e6a8f0-9e38-482a-aaf4-0a48bec0770b/resourceGroups/DefaultResourceGroup-EUS"
}

resource "azurerm_storage_account" "firefly45e6a8f09e38482a-d31" {
  access_tier                     = "Hot"
  account_replication_type        = "LRS"
  account_tier                    = "Standard"
  allow_nested_items_to_be_public = false
  blob_properties {
    change_feed_enabled      = false
    last_access_time_enabled = false
    versioning_enabled       = false
  }
  cross_tenant_replication_enabled = false
  location                         = "eastus"
  min_tls_version                  = "TLS1_0"
  name                             = "firefly45e6a8f09e38482a"
  network_rules {
    bypass         = ["AzureServices"]
    default_action = "Allow"
  }
  queue_properties {
    hour_metrics {
      enabled               = true
      include_apis          = true
      retention_policy_days = 7
      version               = "1.0"
    }
    logging {
      delete  = false
      read    = false
      version = "1.0"
      write   = false
    }
    minute_metrics {
      enabled      = false
      include_apis = false
      version      = "1.0"
    }
  }
  resource_group_name = "firefly"
  share_properties {
    retention_policy {
      days = 7
    }
  }
}

resource "azurerm_storage_account" "cs21003200344c4486f-3ae" {
  access_tier                     = "Hot"
  account_replication_type        = "LRS"
  account_tier                    = "Standard"
  allow_nested_items_to_be_public = false
  blob_properties {
    change_feed_enabled      = false
    last_access_time_enabled = false
    versioning_enabled       = false
  }
  cross_tenant_replication_enabled = false
  location                         = "eastus"
  name                             = "cs21003200344c4486f"
  network_rules {
    bypass         = ["AzureServices"]
    default_action = "Allow"
  }
  queue_properties {
    hour_metrics {
      enabled               = true
      include_apis          = true
      retention_policy_days = 7
      version               = "1.0"
    }
    logging {
      delete  = false
      read    = false
      version = "1.0"
      write   = false
    }
    minute_metrics {
      enabled      = false
      include_apis = false
      version      = "1.0"
    }
  }
  resource_group_name = "cloud-shell-storage-eastus"
  share_properties {
    retention_policy {
      days = 7
    }
  }
  tags = {
    ms-resource-usage = "azure-cloud-shell"
  }
}

resource "azurerm_resource_group" "cloud-shell-storage-eastus-260" {
  location = "eastus"
  name     = "cloud-shell-storage-eastus"
}

resource "azurerm_resource_group" "firefly-d5f" {
  location = "eastus"
  name     = "firefly"
}

resource "azurerm_resource_group" "DefaultResourceGroup-EUS-85d" {
  location = "eastus"
  name     = "DefaultResourceGroup-EUS"
}

