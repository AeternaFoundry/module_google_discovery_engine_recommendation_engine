output "discovery_engine_recommendation_engines_id" {
  description = "Map of id values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no id are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "discovery_engine_recommendation_engines_common_config" {
  description = "Map of common_config values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no common_config are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => one(v.common_config) if v.common_config != null && length(v.common_config) > 0 }
}
output "discovery_engine_recommendation_engines_create_time" {
  description = "Map of create_time values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no create_time are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "discovery_engine_recommendation_engines_data_store_ids" {
  description = "Map of data_store_ids values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no data_store_ids are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.data_store_ids if v.data_store_ids != null && length(v.data_store_ids) > 0 }
}
output "discovery_engine_recommendation_engines_deletion_policy" {
  description = "Map of deletion_policy values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no deletion_policy are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "discovery_engine_recommendation_engines_display_name" {
  description = "Map of display_name values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no display_name are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "discovery_engine_recommendation_engines_engine_id" {
  description = "Map of engine_id values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no engine_id are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.engine_id if v.engine_id != null && length(v.engine_id) > 0 }
}
output "discovery_engine_recommendation_engines_industry_vertical" {
  description = "Map of industry_vertical values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no industry_vertical are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.industry_vertical if v.industry_vertical != null && length(v.industry_vertical) > 0 }
}
output "discovery_engine_recommendation_engines_location" {
  description = "Map of location values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no location are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.location if v.location != null && length(v.location) > 0 }
}
output "discovery_engine_recommendation_engines_media_recommendation_engine_config" {
  description = "Map of media_recommendation_engine_config values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no media_recommendation_engine_config are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => one(v.media_recommendation_engine_config) if v.media_recommendation_engine_config != null && length(v.media_recommendation_engine_config) > 0 }
}
output "discovery_engine_recommendation_engines_name" {
  description = "Map of name values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no name are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.name if v.name != null && length(v.name) > 0 }
}
output "discovery_engine_recommendation_engines_project" {
  description = "Map of project values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no project are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.project if v.project != null && length(v.project) > 0 }
}
output "discovery_engine_recommendation_engines_update_time" {
  description = "Map of update_time values across all discovery_engine_recommendation_engines, keyed the same as var.discovery_engine_recommendation_engines except keys with no update_time are omitted"
  value       = { for k, v in google_discovery_engine_recommendation_engine.discovery_engine_recommendation_engines : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

