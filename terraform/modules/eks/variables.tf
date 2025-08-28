variable "cluster_name" {
  description = "name of the cluster"
}

variable "subnet_id1" {
  description = "subnet id 1"
}

variable "subnet_id2" {
  description = "subnet id 2"
}

variable "node_group_name" {
  description = "node group name"
}

variable "cluster_role_arn" {
  description = "cluster role arn"
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

variable "ami_type" {
  description = "ami type"
}

variable "instance_types" {
  description = "tinstance types"
  type = list(string)
}

variable "disk_size" {
  description = "disk size"
}