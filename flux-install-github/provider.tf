terraform {
  required_version = ">= 1.2.6"

  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.17.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.13.1"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
    github = {
      source  = "integrations/github"
      version = ">= 4.31.0"
    }
  }
}

provider "flux" {}

provider "kubernetes" {
  config_path = var.kubeconfig_path
}

provider "kubectl" {
}

provider "github" {
  owner = var.github_owner
  token = var.github_token
}