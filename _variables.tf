variable "policy_csv" {
  default = <<EOF
    p, role:admin, applications, *, */*, allow
    p, role:admin, projects, *, allow
    p, role:admin, repositories, *, allow
  EOF
}

variable "suffix" {
  type    = string
  default = "prod"
}

variable "admin_policy_csv" {
  default = <<EOF
    g, ArgoCD.Admins, role:admin
  EOF
}

variable "dev_arogcd_dev_policy_csv" {
  default = <<EOF
    p, user1, applications, *, */*, allow
    p, user1, exec, create, */*, allow
    p, user1, applicationsets, get, */*, allow
    p, user1, applicationsets, create, */*, allow
    p, user1, applicationsets, update, */*, allow
    p, user1, applicationsets, delete, */*, allow
  EOF
}

variable "dev_arogocd_prod_policy_csv" {
  default = <<EOF
    g, user1, role:readonly
  EOF
}

variable "int_dev_argocd_prod_policy_csv" {
  default = <<EOF
    p, user2, applications, get, default/myapp, allow
    p, user2, applications, update, default/myapp, allow
    p, user2, applications, sync, default/myapp, allow
    p, user2, applications, override, default/myapp, allow
    p, user2, logs, get, default/myapp, allow
    p, user2, applications, get, default/myapp2, allow
    p, user2, applications, update, default/myapp2, allow
    p, user2, applications, sync, default/myapp2, allow
    p, user2, applications, override, default/myapp2, allow
    p, user2, logs, get, default/myapp2, allow
    p, user2, applications, get, default/myapp3, allow
    p, user2, applications, update, default/myapp3, allow
    p, user2, applications, sync, default/myapp3, allow
    p, user2, applications, override, default/myapp3, allow
    p, user2, logs, get, default/myapp3, allow
  EOF

}
