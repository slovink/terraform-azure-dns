output "dns_zone_id" {
  description = "The DNS Zone ID."
  value       = azurerm_dns_zone.dns_zone[*].id
}

output "dns_zone_number_of_record_sets" {
  description = "The number of records already in the zone."
  value       = azurerm_dns_zone.dns_zone[*].number_of_record_sets
}

output "dns_zone_name_servers" {
  description = " A list of values that make up the NS record for the zone."
  value       = azurerm_dns_zone.dns_zone[*].name_servers
}

output "dns_zone_max_number_of_record_sets" {
  description = " Maximum number of Records in the zone. Defaults to 1000."
  value       = azurerm_dns_zone.dns_zone[*].max_number_of_record_sets
}

output "private_dns_zone_id" {
  description = "The Private DNS Zone ID."
  value       = azurerm_private_dns_zone.private_dns_zone[*].id
}

output "private_dns_zone_number_of_record_sets" {
  description = "The current number of record sets in this Private DNS zone."
  value       = azurerm_private_dns_zone.private_dns_zone[*].number_of_record_sets
}

output "private_dns_zone_max_number_of_record_sets" {
  description = "The maximum number of record sets that can be created in this Private DNS zone."
  value       = azurerm_private_dns_zone.private_dns_zone[*].max_number_of_record_sets
}

output "private_dns_zone_max_number_of_virtual_network_links" {
  description = "The maximum number of virtual networks that can be linked to this Private DNS zone."
  value       = azurerm_private_dns_zone.private_dns_zone[*].max_number_of_virtual_network_links
}

output "private_dns_zone_max_number_of_virtual_network_links_with_registration" {
  description = "The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled."
  value       = azurerm_private_dns_zone.private_dns_zone[*].max_number_of_virtual_network_links_with_registration
}

output "private_dns_zone_virtual_network_link_id" {
  description = "The ID of the Private DNS Zone Virtual Network Link."
  value       = azurerm_private_dns_zone_virtual_network_link.private_dns_vnet_link[*].id
}

output "dns_a_record_id" {
  description = " The DNS A Record ID."
  value       = values(azurerm_dns_a_record.records_a)[*].id
}


output "dns_cname_record_id" {
  description = " The DNS CNAME Record ID."
  value       = values(azurerm_dns_cname_record.records_cname)[*].id //values(mso_schema_template_bd.bd)[*].name
}

output "dns_ns_record_id" {
  description = " The DNS NS Record ID."
  value       = values(azurerm_dns_ns_record.records_ns)[*].id
}

output "dns_a_record_fqdn" {
  description = "The FQDN of the DNS A Record."
  value       = values(azurerm_dns_a_record.records_a)[*].fqdn
}

output "dns_cname_record_fqdn" {
  description = "The FQDN of the DNS CNAME Record."
  value       = values(azurerm_dns_cname_record.records_cname)[*].fqdn
}
output "dns_ns_record_fqdn" {
  description = "The FQDN of the DNS NS Record."
  value       = values(azurerm_dns_ns_record.records_ns)[*].fqdn
}