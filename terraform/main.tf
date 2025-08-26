module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  cidr_block_1 = var.cidr_1
  cidr_block_2 = var.cidr_2
  availability_zone_1 = var.availability_zone_1
  availability_zone_2 = var.availability_zone_2
}

module "security-groups" {
  source = "./modules/security-groups"
  eks_cluster_role = var.eks_cluster_role
  eks_node_role = var.eks_node_role
}

module "eks" {
  source = "./modules/eks"
  cluster_name = var.cluster_name
  cluster_role_arn = var.cluster_role_arn
  node_role_arn = var.node_role_arn
  node_group_name = var.node_group_name
  subnet_ids = var.subnet_ids
  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size
  ami_type = var.ami_type
  instance_types = var.instance_types
  disk_size = var.disk_size
}