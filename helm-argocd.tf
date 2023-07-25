resource "helm_release" "argocd" {
  repository = "https://argoproj.github.io/argo-helm"
  name       = "argocd"
  chart      = "argo-cd"

  version          = "5.34.4"
  namespace        = "argocd"
  create_namespace = true

  values = [file("values/argocd-helm-values.yaml"),]
    

#   set {
#     name  = "repoServer.serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
#     value = module.argocd_repo_server_iam_role[0].iam_role_arn
#   }

  # set {
  #   name  = "server.ingress.hosts[0]"
  #   value = (var.environment == "dev") ? "argocd.dev.totara.io" : "argocd.cloud.totara.io"
  # }
  # set {
  #   name  = "server.ingress.annotations.external-dns\\.alpha\\.kubernetes\\.io/hostname"
  #   value = (var.environment == "dev") ? "argocd.dev.totara.io" : "argocd.cloud.totara.io"
  # }

#   set {
#     name  = "server.ingress.annotations.alb\\.ingress\\.kubernetes\\.io/certificate-arn"
#     value = (var.environment == "dev") ? local.bootstrap-domain-arns["dev.totara.io"] : local.bootstrap-domain-arns["cloud.totara.io"]

#   }

#   set {
#     name  = "redis-ha.enabled"
#     value = true
#   }

#   set {
#     name  = "controller.replicas"
#     value = 1
#   }

#   set {
#     name  = "server.replicas"
#     value = 2
#   }

#   set {
#     name  = "repoServer.replicas"
#     value = 2
#   }

#   set {
#     name  = "applicationSet.replicaCount"
#     value = 2
#   }

#   set {
#     name  = "configs.cm.repositories"
#     value = yamlencode(local.repositories_cm)
#   }

#   set {
#     name  = "configs.ssh.extraHosts"
#     value = "[git.totaralearning.com]:7999 ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXkhGTkvdvsvnHX0C1aGmzm9wxiRe/rU78R3cpQxUabo3WPnk4OlpZOt4TZwUKqgZovZi8PM6qVLeMoFasXnx43BdN6shZaJzf+56IhxRl0usqghq3xOEK98BXfBP4osY8Aux6B0XPhIXr0XLVN7kn1gfd716dhCrfcVSur086tnfN5Pf3+/8/rAV7qBijBjJFehjgNFjc8VPCLyVUOb+1+Hpj1zCzbd9iVh4AEIA9DgVMG0FUVDM2N697xCynpUdJfWjsnnsOS2KNYHVhJ4E8O5SAIUSKDpnJjtkjsNMX4JlomiI9gN6a+vhdalXmIqRmwk6OfsSnAiEgweZP7L1L"
#   }

#   depends_on = [kubernetes_secret.ssh-private-key]

}
