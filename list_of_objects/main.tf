locals {
  tolerations = [{
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

  out = {}
}

output "out" {
  value = local.out
}
