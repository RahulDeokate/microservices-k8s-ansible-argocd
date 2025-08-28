resource "aws_eks_cluster" "cluster" {
  name = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = [var.subnet_id1, var.subnet_id2]
  }
}

resource "aws_eks_node_group" "worker_node" {
  cluster_name = aws_eks_cluster.cluster.name
  node_group_name = var.node_group_name
  node_role_arn = var.node_role_arn
  subnet_ids = [var.subnet_id1, var.subnet_id2]

  scaling_config {
    desired_size = var.desired_size
    max_size = var.max_size
    min_size = var.min_size
  }

  ami_type = var.ami_type
  instance_types = var.instance_types
  disk_size = var.disk_size

}