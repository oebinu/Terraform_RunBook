

module "first_helm" {
    source = "../module/aws_lb_controller"   

    cluster_name    = var.cluster_name
    repo_path       = "https://aws.github.io/eks-charts"
    namespace       = "kube-system"
    chart_name      = "aws-load-balancer-controller"
    sa_name         = "aws-load-balancer-controller-sa"
    role_name       = "aws-load-balancer-controller-role"
    policy_name     = "aws-load-balancer-controller-policy"
}
