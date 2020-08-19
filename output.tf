output "random_id" {
  value       = data.null_data_source.id.outputs["random_id"]
  description = "random id"
}
