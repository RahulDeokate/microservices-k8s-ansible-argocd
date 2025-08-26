output "eks_cluster_role_arn" {
  description = "cluster role arn"
  value = aws_iam_role.eks_cluster_role.arn
}

output "eks_node_role" {
  description = "node role arn"
  value = aws_iam_role.eks_node_role.arn
}