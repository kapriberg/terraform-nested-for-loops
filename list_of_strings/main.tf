locals {
  in = [
    "--set-something=foobar",
    "--set-boolean=true",
  ]

}

output "in" {
  value = local.in
}

output "out" {
  value = [
    for idx, element in local.in : "oneAgent.classicalFullStack.args[${idx}]=${element}"
  ]
}
