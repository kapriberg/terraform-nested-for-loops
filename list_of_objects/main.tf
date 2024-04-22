locals {
  in = [{
    "key"      = "master"
    "operator" = "Exists"
    "effect"   = "NoSchedule"
    },
    {
      "key"      = "inactive",
      "operator" = "Equal"
      "value"    = "true"
      "effect"   = "NoSchedule"
    }
  ]

}

output "in" {
  value = local.in
}

output "out" {
  value = merge([
    for idx, element in local.in : { for key, value in element : "[${idx}].${key}" => value }
  ]...)
}
