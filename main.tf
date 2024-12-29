 provider "aws" {
    region = var.region
  }
  
  resource "aws_eks_cluster" "k8s_cluster" {
    name     = "devops-cluster"
    role_arn = aws_iam_role.eks_role.arn
    vpc_config {
      subnet_ids = aws_subnet.eks_subnets[*].id
    }
  }

  # variables.tf
  variable "region" {
    default = "us-west-2"
  }
