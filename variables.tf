variable "discovery_engine_recommendation_engines" {
  description = <<EOT
Map of discovery_engine_recommendation_engines, attributes below
Required:
    - data_store_ids
    - display_name
    - engine_id
    - location
Optional:
    - deletion_policy
    - industry_vertical
    - project
    - common_config (block):
        - company_name (optional)
    - media_recommendation_engine_config (block):
        - engine_features_config (optional, block):
            - most_popular_config (optional, block):
                - time_window_days (optional)
            - recommended_for_you_config (optional, block):
                - context_event_type (optional)
        - optimization_objective (optional)
        - optimization_objective_config (optional, block):
            - target_field (optional)
            - target_field_value_float (optional)
        - training_state (optional)
        - type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    data_store_ids    = list(string)
    display_name      = string
    engine_id         = string
    location          = string
    deletion_policy   = optional(string)
    industry_vertical = optional(string)
    project           = optional(string)
    common_config = optional(object({
      company_name = optional(string)
    }))
    media_recommendation_engine_config = optional(object({
      engine_features_config = optional(object({
        most_popular_config = optional(object({
          time_window_days = optional(number)
        }))
        recommended_for_you_config = optional(object({
          context_event_type = optional(string)
        }))
      }))
      optimization_objective = optional(string)
      optimization_objective_config = optional(object({
        target_field             = optional(string)
        target_field_value_float = optional(number)
      }))
      training_state = optional(string)
      type           = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

