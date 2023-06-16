terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}

resource "aws_eks_cluster" "eks-cluster" {
  name     = "MyCluster"
  role_arn = var.role_arn

  vpc_config {
    subnet_ids   = [var.subnet_id_1, var.subnet_id_2, var.subnet_id_3]
  }
}

resource "aws_eks_node_group" "worker-node-group" {
  cluster_name    = aws_eks_cluster.eks-cluster.name
  node_group_name = "MyNodeGroup"
  node_role_arn   = var.role_arn
  subnet_ids   = [var.subnet_id_1, var.subnet_id_2, var.subnet_id_3]
  instance_types = ["t3.medium"]

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }
}