variable "products" {
  description = <<EOT
Map of products, attributes below
Required:
    - name
Optional:
    - active
    - description
    - images
    - metadata
    - shippable
    - statement_descriptor
    - tax_code
    - type
    - unit_label
    - url
    - default_price_data (block):
        - currency (required)
        - currency_options (optional, block):
            - custom_unit_amount (optional, block):
                - enabled (required)
                - maximum (optional)
                - minimum (optional)
                - preset (optional)
            - key (required)
            - tax_behavior (optional)
            - tiers (optional, block):
                - flat_amount (optional)
                - flat_amount_decimal (optional)
                - unit_amount (optional)
                - unit_amount_decimal (optional)
                - up_to (required)
            - unit_amount (optional)
            - unit_amount_decimal (optional)
        - custom_unit_amount (optional, block):
            - enabled (required)
            - maximum (optional)
            - minimum (optional)
            - preset (optional)
        - metadata (optional)
        - recurring (optional, block):
            - interval (required)
            - interval_count (optional)
        - tax_behavior (optional)
        - unit_amount (optional)
        - unit_amount_decimal (optional)
    - marketing_features (block):
        - name (required)
    - package_dimensions (block):
        - height (required)
        - length (required)
        - weight (required)
        - width (required)
EOT

  type = map(object({
    name                 = string
    active               = optional(bool)
    description          = optional(string)
    images               = optional(list(string))
    metadata             = optional(map(string))
    shippable            = optional(bool)
    statement_descriptor = optional(string)
    tax_code             = optional(string)
    type                 = optional(string)
    unit_label           = optional(string)
    url                  = optional(string)
    default_price_data = optional(list(object({
      currency = string
      currency_options = optional(list(object({
        custom_unit_amount = optional(list(object({
          enabled = bool
          maximum = optional(number)
          minimum = optional(number)
          preset  = optional(number)
        })))
        key          = string
        tax_behavior = optional(string)
        tiers = optional(list(object({
          flat_amount         = optional(number)
          flat_amount_decimal = optional(string)
          unit_amount         = optional(number)
          unit_amount_decimal = optional(string)
          up_to               = number
        })))
        unit_amount         = optional(number)
        unit_amount_decimal = optional(string)
      })))
      custom_unit_amount = optional(list(object({
        enabled = bool
        maximum = optional(number)
        minimum = optional(number)
        preset  = optional(number)
      })))
      metadata = optional(map(string))
      recurring = optional(list(object({
        interval       = string
        interval_count = optional(number)
      })))
      tax_behavior        = optional(string)
      unit_amount         = optional(number)
      unit_amount_decimal = optional(string)
    })))
    marketing_features = optional(list(object({
      name = string
    })))
    package_dimensions = optional(list(object({
      height = number
      length = number
      weight = number
      width  = number
    })))
  }))
}

