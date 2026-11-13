variable "region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type    = string
  default = "demo-eks"
}

variable "kubernetes_version" {
  description = "Use a version in STANDARD support (extended support costs extra per hour)."
  type        = string
  default     = "1.35"
}

variable "node_instance_type" {
  type    = string
  default = "t3.medium"
}

variable "ecr_repo_name" {
  type    = string
  default = "cicd-demo-app"
}

variable "ecr_keep_images" {
  type    = number
  default = 3
}
