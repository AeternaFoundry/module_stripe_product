resource "stripe_product" "products" {
  for_each = var.products

  name                 = each.value.name
  active               = each.value.active
  description          = each.value.description
  images               = each.value.images
  metadata             = each.value.metadata
  shippable            = each.value.shippable
  statement_descriptor = each.value.statement_descriptor
  tax_code             = each.value.tax_code
  type                 = each.value.type
  unit_label           = each.value.unit_label
  url                  = each.value.url

  dynamic "default_price_data" {
    for_each = each.value.default_price_data != null ? each.value.default_price_data : []
    content {
      currency = default_price_data.value.currency
      dynamic "currency_options" {
        for_each = default_price_data.value.currency_options != null ? default_price_data.value.currency_options : []
        content {
          dynamic "custom_unit_amount" {
            for_each = currency_options.value.custom_unit_amount != null ? currency_options.value.custom_unit_amount : []
            content {
              enabled = custom_unit_amount.value.enabled
              maximum = custom_unit_amount.value.maximum
              minimum = custom_unit_amount.value.minimum
              preset  = custom_unit_amount.value.preset
            }
          }
          key                 = currency_options.value.key
          tax_behavior        = currency_options.value.tax_behavior
          tiers               = currency_options.value.tiers
          unit_amount         = currency_options.value.unit_amount
          unit_amount_decimal = currency_options.value.unit_amount_decimal
        }
      }
      dynamic "custom_unit_amount" {
        for_each = default_price_data.value.custom_unit_amount != null ? default_price_data.value.custom_unit_amount : []
        content {
          enabled = custom_unit_amount.value.enabled
          maximum = custom_unit_amount.value.maximum
          minimum = custom_unit_amount.value.minimum
          preset  = custom_unit_amount.value.preset
        }
      }
      metadata = default_price_data.value.metadata
      dynamic "recurring" {
        for_each = default_price_data.value.recurring != null ? default_price_data.value.recurring : []
        content {
          interval       = recurring.value.interval
          interval_count = recurring.value.interval_count
        }
      }
      tax_behavior        = default_price_data.value.tax_behavior
      unit_amount         = default_price_data.value.unit_amount
      unit_amount_decimal = default_price_data.value.unit_amount_decimal
    }
  }

  dynamic "marketing_features" {
    for_each = each.value.marketing_features != null ? each.value.marketing_features : []
    content {
      name = marketing_features.value.name
    }
  }

  dynamic "package_dimensions" {
    for_each = each.value.package_dimensions != null ? each.value.package_dimensions : []
    content {
      height = package_dimensions.value.height
      length = package_dimensions.value.length
      weight = package_dimensions.value.weight
      width  = package_dimensions.value.width
    }
  }
}

