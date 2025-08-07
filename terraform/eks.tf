module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.4" # Use latest compatible version (you can adjust)

  cluster_name    = "my-eks-cluster"
  cluster_version = "1.27"

  vpc_id  = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 3
      min_size     = 1

      instance_types = ["t3.medium"]
    }
  }
}
