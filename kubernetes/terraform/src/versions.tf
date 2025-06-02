terraform {

  required_version = ">= 1.11.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.31.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.9"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.25"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}


provider "kubernetes" {
  host                   = azurerm_kubernetes_cluster.aks_demo.kube_config[0].host
  client_certificate     = base64decode(azurerm_kubernetes_cluster.aks_demo.kube_config[0].client_certificate)
  client_key             = base64decode(azurerm_kubernetes_cluster.aks_demo.kube_config[0].client_key)
  cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.aks_demo.kube_config[0].cluster_ca_certificate)
}

provider "helm" {
  kubernetes {
    host                   = azurerm_kubernetes_cluster.aks_demo.kube_config[0].host
    client_certificate     = base64decode(azurerm_kubernetes_cluster.aks_demo.kube_config[0].client_certificate)
    client_key             = base64decode(azurerm_kubernetes_cluster.aks_demo.kube_config[0].client_key)
    cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.aks_demo.kube_config[0].cluster_ca_certificate)
  }
}
