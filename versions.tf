terraform {
  required_version = ">= 1.6.0"
  required_providers {
    stripe = {
      source  = "stripe/stripe"
      version = "~> 0.3.0"
    }
  }
}
