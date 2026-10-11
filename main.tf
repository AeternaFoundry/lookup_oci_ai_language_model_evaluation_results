data "oci_ai_language_model_evaluation_results" "ai_language_model_evaluation_results_lookup" {
  for_each = var.ai_language_model_evaluation_results_lookup

  model_id = each.value.model_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

