output "core_byoasns_lookup_id" {
  description = "Map of id values across all core_byoasns_lookup, keyed the same as var.core_byoasns_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_byoasns.core_byoasns_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_byoasns_lookup_byoasn_collection" {
  description = "Map of byoasn_collection values across all core_byoasns_lookup, keyed the same as var.core_byoasns_lookup except keys with no byoasn_collection are omitted"
  value       = { for k, v in data.oci_core_byoasns.core_byoasns_lookup : k => v.byoasn_collection if v.byoasn_collection != null && length(v.byoasn_collection) > 0 }
}
output "core_byoasns_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_byoasns_lookup, keyed the same as var.core_byoasns_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_byoasns.core_byoasns_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_byoasns_lookup_filter" {
  description = "Map of filter values across all core_byoasns_lookup, keyed the same as var.core_byoasns_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_byoasns.core_byoasns_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

