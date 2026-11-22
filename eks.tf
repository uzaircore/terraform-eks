module "eks" {
  # import module template
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

#cluster info (control plan)
  name               = local.name
  kubernetes_version = "1.37"
   
  endpoint_public_access = true

   # EKS Add-ons (latest versions auto-resolved)
  addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent    = true
      before_compute = true # Deploy before node groups to avoid networking issues
    }
        eks-pod-identity-agent = {
      most_recent    = true
      before_compute = true # Enables pod-level IAM via Pod Identity
    }
  }
  
  # Networking
  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets

# EKS Managed Node Group(s)
  eks_managed_node_groups = {
    aws-my-cluster = {
      instance_types                        = ["t3.medium"]
      attach_cluster_primary_security_group = true

      min_size     = 2
      max_size     = 3
      desired_size = 2

      capacity_type = "ON_DEMAND"
    }

  }

    tags = {
    Environment = local.env
    Terraform   = "true"
  }
}
