output "vpc_id" {
  description = "vpc id"
  value = module.vpc.vpc_id
}

output "subnet_1_id" {
  description = "subnets ids"
  value = module.vpc.subnet_1_id
}

output "subnet_2_id" {
  description = "subnets ids"
  value = module.vpc.subnet_2_id
}

output "cluster_name" {
  description = "name of the cluster"
  value = module.eks.cluster_name
}

output "node_group_name" {
  description = "node group name"
  value = module.eks.node_group_name
}