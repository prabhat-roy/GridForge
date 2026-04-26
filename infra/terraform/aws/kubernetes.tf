module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.24"

  cluster_name    = "gridforge-${var.environment}"
  cluster_version = var.eks_version
  vpc_id          = aws_vpc.this.id
  subnet_ids      = aws_subnet.private[*].id

  cluster_endpoint_public_access = true
  enable_irsa                    = true

  eks_managed_node_groups = {
    default = {
      min_size       = var.node_min
      max_size       = var.node_max
      desired_size   = var.node_min
      instance_types = [var.node_instance]
      capacity_type  = "ON_DEMAND"
    }
  }

  cluster_addons = {
    coredns            = { most_recent = true }
    kube-proxy         = { most_recent = true }
    vpc-cni            = { most_recent = true }
    aws-ebs-csi-driver = { most_recent = true }
  }
}
