output "cluster_name" {
  description = "name of the cluster"
  value = aws_eks_cluster.cluster.name
}

output "cluster_endpoint" {
  description = "cluster endpoint"
  value = aws_eks_cluster.cluster.endpoint
}

output "node_group_name" {
  description = "node group name"
  value = aws_eks_node_group.worker_node.cluster_name
}

output "cluster_ca_certificate" {
  description = "cluster ca certificate"
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}