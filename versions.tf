terraform {
  required_version = ">= 1.0.0"

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.7.1"
    }

    aquasec = {
      source  = "aquasecurity/aquasec"
      version = ">= 0.8.18"
    }
  }
}
