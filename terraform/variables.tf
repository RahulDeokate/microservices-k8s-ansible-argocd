variable "vpc_cidr" {
  description = "cidr range for vpc"
}

variable "cidr_1" {
  description = "cidr range for subnet 1"
}

variable "cidr_2" {
  description = "cidr range for subnet 2"
}

variable "availability_zone_1" {
  description = "vailability zone one"
}

variable "availability_zone_2" {
  description = "vailability zone two"
}

variable "eks_cluster_role" {
  description = "eks cluster node"
}

variable "eks_node_role" {
  description = "eks node node"
}

variable "cluster_name" {
  description = "name of the cluster"
}

variable "cluster_role_arn" {
  description = "cluster role arn"
}

variable "node_role_arn" {
  description = "node role arn"
}

variable "subnet_ids" {
  description = "subnet ids"
}

variable "node_group_name" {
  description = "node group name"
}

variable "desired_size" {
  description = "desired size of workser nodes"
}

variable "max_size" {
  description = "max size of worker nodes"
}

variable "min_size" {
  description = "min size of worker nodes"
}

variable "ami_type" {
  description = "ami type"
}

variable "instance_types" {
  description = "instance types"
}

variable "disk_size" {
  description = "disk size"
}