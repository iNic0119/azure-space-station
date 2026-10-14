variable "subscription_id" {
  type        = string
  description = "Azure subscription to deploy into"
}

variable "location" {
  type        = string
  description = "Azure region (must be allowed by the subscription policy)"
}

variable "project" {
  type        = string
  description = "Short project name used in resource names"
}