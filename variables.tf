variable "ai_language_model_evaluation_results_lookup" {
  description = <<EOT
Map of ai_language_model_evaluation_results_lookup, attributes below
Required:
    - model_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    model_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

