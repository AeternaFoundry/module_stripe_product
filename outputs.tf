output "products_id" {
  description = "Map of id values across all products, keyed the same as var.products except keys with no id are omitted"
  value       = { for k, v in stripe_product.products : k => v.id if v.id != null && length(v.id) > 0 }
}
output "products_active" {
  description = "Map of active values across all products, keyed the same as var.products except keys with no active are omitted"
  value       = { for k, v in stripe_product.products : k => v.active if v.active != null }
}
output "products_created" {
  description = "Map of created values across all products, keyed the same as var.products except keys with no created are omitted"
  value       = { for k, v in stripe_product.products : k => v.created if v.created != null }
}
output "products_default_price" {
  description = "Map of default_price values across all products, keyed the same as var.products except keys with no default_price are omitted"
  value       = { for k, v in stripe_product.products : k => v.default_price if v.default_price != null && length(v.default_price) > 0 }
}
output "products_default_price_data" {
  description = "Map of default_price_data values across all products, keyed the same as var.products except keys with no default_price_data are omitted"
  value       = { for k, v in stripe_product.products : k => v.default_price_data if v.default_price_data != null && length(v.default_price_data) > 0 }
}
output "products_description" {
  description = "Map of description values across all products, keyed the same as var.products except keys with no description are omitted"
  value       = { for k, v in stripe_product.products : k => v.description if v.description != null && length(v.description) > 0 }
}
output "products_images" {
  description = "Map of images values across all products, keyed the same as var.products except keys with no images are omitted"
  value       = { for k, v in stripe_product.products : k => v.images if v.images != null && length(v.images) > 0 }
}
output "products_livemode" {
  description = "Map of livemode values across all products, keyed the same as var.products except keys with no livemode are omitted"
  value       = { for k, v in stripe_product.products : k => v.livemode if v.livemode != null }
}
output "products_marketing_features" {
  description = "Map of marketing_features values across all products, keyed the same as var.products except keys with no marketing_features are omitted"
  value       = { for k, v in stripe_product.products : k => v.marketing_features if v.marketing_features != null && length(v.marketing_features) > 0 }
}
output "products_metadata" {
  description = "Map of metadata values across all products, keyed the same as var.products except keys with no metadata are omitted"
  value       = { for k, v in stripe_product.products : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "products_name" {
  description = "Map of name values across all products, keyed the same as var.products except keys with no name are omitted"
  value       = { for k, v in stripe_product.products : k => v.name if v.name != null && length(v.name) > 0 }
}
output "products_object" {
  description = "Map of object values across all products, keyed the same as var.products except keys with no object are omitted"
  value       = { for k, v in stripe_product.products : k => v.object if v.object != null && length(v.object) > 0 }
}
output "products_package_dimensions" {
  description = "Map of package_dimensions values across all products, keyed the same as var.products except keys with no package_dimensions are omitted"
  value       = { for k, v in stripe_product.products : k => v.package_dimensions if v.package_dimensions != null && length(v.package_dimensions) > 0 }
}
output "products_shippable" {
  description = "Map of shippable values across all products, keyed the same as var.products except keys with no shippable are omitted"
  value       = { for k, v in stripe_product.products : k => v.shippable if v.shippable != null }
}
output "products_statement_descriptor" {
  description = "Map of statement_descriptor values across all products, keyed the same as var.products except keys with no statement_descriptor are omitted"
  value       = { for k, v in stripe_product.products : k => v.statement_descriptor if v.statement_descriptor != null && length(v.statement_descriptor) > 0 }
}
output "products_tax_code" {
  description = "Map of tax_code values across all products, keyed the same as var.products except keys with no tax_code are omitted"
  value       = { for k, v in stripe_product.products : k => v.tax_code if v.tax_code != null && length(v.tax_code) > 0 }
}
output "products_type" {
  description = "Map of type values across all products, keyed the same as var.products except keys with no type are omitted"
  value       = { for k, v in stripe_product.products : k => v.type if v.type != null && length(v.type) > 0 }
}
output "products_unit_label" {
  description = "Map of unit_label values across all products, keyed the same as var.products except keys with no unit_label are omitted"
  value       = { for k, v in stripe_product.products : k => v.unit_label if v.unit_label != null && length(v.unit_label) > 0 }
}
output "products_updated" {
  description = "Map of updated values across all products, keyed the same as var.products except keys with no updated are omitted"
  value       = { for k, v in stripe_product.products : k => v.updated if v.updated != null }
}
output "products_url" {
  description = "Map of url values across all products, keyed the same as var.products except keys with no url are omitted"
  value       = { for k, v in stripe_product.products : k => v.url if v.url != null && length(v.url) > 0 }
}

