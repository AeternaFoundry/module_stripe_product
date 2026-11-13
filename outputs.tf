output "products_id" {
  description = "Map of id values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.id }
}
output "products_active" {
  description = "Map of active values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.active }
}
output "products_created" {
  description = "Map of created values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.created }
}
output "products_default_price" {
  description = "Map of default_price values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.default_price }
}
output "products_default_price_data" {
  description = "Map of default_price_data values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.default_price_data }
}
output "products_description" {
  description = "Map of description values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.description }
}
output "products_images" {
  description = "Map of images values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.images }
}
output "products_livemode" {
  description = "Map of livemode values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.livemode }
}
output "products_marketing_features" {
  description = "Map of marketing_features values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.marketing_features }
}
output "products_metadata" {
  description = "Map of metadata values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.metadata }
}
output "products_name" {
  description = "Map of name values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.name }
}
output "products_object" {
  description = "Map of object values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.object }
}
output "products_package_dimensions" {
  description = "Map of package_dimensions values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.package_dimensions }
}
output "products_shippable" {
  description = "Map of shippable values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.shippable }
}
output "products_statement_descriptor" {
  description = "Map of statement_descriptor values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.statement_descriptor }
}
output "products_tax_code" {
  description = "Map of tax_code values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.tax_code }
}
output "products_type" {
  description = "Map of type values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.type }
}
output "products_unit_label" {
  description = "Map of unit_label values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.unit_label }
}
output "products_updated" {
  description = "Map of updated values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.updated }
}
output "products_url" {
  description = "Map of url values across all products, keyed the same as var.products"
  value       = { for k, v in stripe_product.products : k => v.url }
}

