

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
