data "oci_core_byoasns" "core_byoasns_lookup" {
  for_each = var.core_byoasns_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

