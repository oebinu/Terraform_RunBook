

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



module "second_helm" {
    source = "../module/external_dns"   

    cluster_name    = var.cluster_name
    repo_path       = "https://charts.bitnami.com/bitnami"
    namespace       = "kube-system"
    chart_name      = "external-dns"
    sa_name         = "external-dns-sa"
    role_name       = "external-dns-role"
    policy_name     = "external-dns-policy"

    values  =  [
    <<-VALUES
domainFilters:
  - oebinu.com
policy: upsert-only 
registry: txt
txtOwnerId: Z00730793RAAT80PR2H1S
aws:
  region: ap-northeast-2
  zoneType: public
    VALUES
    ]
}
