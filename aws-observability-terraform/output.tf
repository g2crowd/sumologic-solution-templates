output "Apps" {
  value       = module.sumo-module
  description = "All outputs related to apps."
  sensitive = true
}

output "g2dev-us-east-1" {
  value       = module.g2dev-us-east-1
  description = "All outputs related to collection and sources."
}

# output "Collection" {
#   value       = module.collection-module
#   description = "All outputs related to collection and sources."
#   sensitive = true
# }
