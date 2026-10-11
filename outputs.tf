output "ai_language_model_evaluation_results_lookup_id" {
  description = "Map of id values across all ai_language_model_evaluation_results_lookup, keyed the same as var.ai_language_model_evaluation_results_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_ai_language_model_evaluation_results.ai_language_model_evaluation_results_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ai_language_model_evaluation_results_lookup_evaluation_result_collection" {
  description = "Map of evaluation_result_collection values across all ai_language_model_evaluation_results_lookup, keyed the same as var.ai_language_model_evaluation_results_lookup except keys with no evaluation_result_collection are omitted"
  value       = { for k, v in data.oci_ai_language_model_evaluation_results.ai_language_model_evaluation_results_lookup : k => v.evaluation_result_collection if v.evaluation_result_collection != null && length(v.evaluation_result_collection) > 0 }
}
output "ai_language_model_evaluation_results_lookup_filter" {
  description = "Map of filter values across all ai_language_model_evaluation_results_lookup, keyed the same as var.ai_language_model_evaluation_results_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_ai_language_model_evaluation_results.ai_language_model_evaluation_results_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ai_language_model_evaluation_results_lookup_model_id" {
  description = "Map of model_id values across all ai_language_model_evaluation_results_lookup, keyed the same as var.ai_language_model_evaluation_results_lookup except keys with no model_id are omitted"
  value       = { for k, v in data.oci_ai_language_model_evaluation_results.ai_language_model_evaluation_results_lookup : k => v.model_id if v.model_id != null && length(v.model_id) > 0 }
}

