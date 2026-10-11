resource "google_discovery_engine_recommendation_engine" "discovery_engine_recommendation_engines" {
  for_each = var.discovery_engine_recommendation_engines

  data_store_ids    = each.value.data_store_ids
  display_name      = each.value.display_name
  engine_id         = each.value.engine_id
  location          = each.value.location
  deletion_policy   = each.value.deletion_policy
  industry_vertical = each.value.industry_vertical
  project           = each.value.project

  dynamic "common_config" {
    for_each = each.value.common_config != null ? [each.value.common_config] : []
    content {
      company_name = common_config.value.company_name
    }
  }

  dynamic "media_recommendation_engine_config" {
    for_each = each.value.media_recommendation_engine_config != null ? [each.value.media_recommendation_engine_config] : []
    content {
      dynamic "engine_features_config" {
        for_each = media_recommendation_engine_config.value.engine_features_config != null ? [media_recommendation_engine_config.value.engine_features_config] : []
        content {
          dynamic "most_popular_config" {
            for_each = engine_features_config.value.most_popular_config != null ? [engine_features_config.value.most_popular_config] : []
            content {
              time_window_days = most_popular_config.value.time_window_days
            }
          }
          dynamic "recommended_for_you_config" {
            for_each = engine_features_config.value.recommended_for_you_config != null ? [engine_features_config.value.recommended_for_you_config] : []
            content {
              context_event_type = recommended_for_you_config.value.context_event_type
            }
          }
        }
      }
      optimization_objective = media_recommendation_engine_config.value.optimization_objective
      dynamic "optimization_objective_config" {
        for_each = media_recommendation_engine_config.value.optimization_objective_config != null ? [media_recommendation_engine_config.value.optimization_objective_config] : []
        content {
          target_field             = optimization_objective_config.value.target_field
          target_field_value_float = optimization_objective_config.value.target_field_value_float
        }
      }
      training_state = media_recommendation_engine_config.value.training_state
      type           = media_recommendation_engine_config.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

