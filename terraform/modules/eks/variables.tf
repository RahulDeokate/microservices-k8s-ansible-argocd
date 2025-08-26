variable "cluster_name" {
  description = "name of the cluster"
}

variable "cluster_role_arn" {
  description = "cluster role arn"
}

variable "subnet_ids" {
  description = "subnet ids"
}

variable "node_group_name" {
  description = "node group name"
}

variable "node_role_arn" {
  description = "node role arn"
}

variable "desired_size" {
  description = "desired node group size"
}

variable "max_size" {
  description = "max node group size"
}

variable "min_size" {
  description = "min node group size"
}