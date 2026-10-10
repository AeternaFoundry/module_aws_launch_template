variable "launch_templates" {
  description = <<EOT
Map of launch_templates, attributes below
Optional:
    - default_version
    - description
    - disable_api_stop
    - disable_api_termination
    - ebs_optimized
    - image_id
    - instance_initiated_shutdown_behavior
    - instance_type
    - kernel_id
    - key_name
    - name
    - name_prefix
    - ram_disk_id
    - region
    - security_group_names
    - tags
    - tags_all
    - update_default_version
    - user_data
    - vpc_security_group_ids
    - block_device_mappings (block):
        - device_name (optional)
        - ebs (optional, block):
            - delete_on_termination (optional)
            - encrypted (optional)
            - iops (optional)
            - kms_key_id (optional)
            - snapshot_id (optional)
            - throughput (optional)
            - volume_initialization_rate (optional)
            - volume_size (optional)
            - volume_type (optional)
        - no_device (optional)
        - virtual_name (optional)
    - capacity_reservation_specification (block):
        - capacity_reservation_preference (optional)
        - capacity_reservation_target (optional, block):
            - capacity_reservation_id (optional)
            - capacity_reservation_resource_group_arn (optional)
    - cpu_options (block):
        - amd_sev_snp (optional)
        - core_count (optional)
        - nested_virtualization (optional)
        - threads_per_core (optional)
    - credit_specification (block):
        - cpu_credits (optional)
    - enclave_options (block):
        - enabled (optional)
    - hibernation_options (block):
        - configured (required)
    - iam_instance_profile (block):
        - arn (optional)
        - name (optional)
    - instance_market_options (block):
        - market_type (optional)
        - spot_options (optional, block):
            - block_duration_minutes (optional)
            - instance_interruption_behavior (optional)
            - max_price (optional)
            - spot_instance_type (optional)
            - valid_until (optional)
    - instance_requirements (block):
        - accelerator_count (optional, block):
            - max (optional)
            - min (optional)
        - accelerator_manufacturers (optional)
        - accelerator_names (optional)
        - accelerator_total_memory_mib (optional, block):
            - max (optional)
            - min (optional)
        - accelerator_types (optional)
        - allowed_instance_types (optional)
        - bare_metal (optional)
        - baseline_ebs_bandwidth_mbps (optional, block):
            - max (optional)
            - min (optional)
        - burstable_performance (optional)
        - cpu_manufacturers (optional)
        - excluded_instance_types (optional)
        - instance_generations (optional)
        - local_storage (optional)
        - local_storage_types (optional)
        - max_spot_price_as_percentage_of_optimal_on_demand_price (optional)
        - memory_gib_per_vcpu (optional, block):
            - max (optional)
            - min (optional)
        - memory_mib (required, block):
            - max (optional)
            - min (required)
        - network_bandwidth_gbps (optional, block):
            - max (optional)
            - min (optional)
        - network_interface_count (optional, block):
            - max (optional)
            - min (optional)
        - on_demand_max_price_percentage_over_lowest_price (optional)
        - require_hibernate_support (optional)
        - spot_max_price_percentage_over_lowest_price (optional)
        - total_local_storage_gb (optional, block):
            - max (optional)
            - min (optional)
        - vcpu_count (required, block):
            - max (optional)
            - min (required)
    - license_specification (block):
        - license_configuration_arn (required)
    - maintenance_options (block):
        - auto_recovery (optional)
    - metadata_options (block):
        - http_endpoint (optional)
        - http_protocol_ipv6 (optional)
        - http_put_response_hop_limit (optional)
        - http_tokens (optional)
        - instance_metadata_tags (optional)
    - monitoring (block):
        - enabled (optional)
    - network_interfaces (block):
        - associate_carrier_ip_address (optional)
        - associate_public_ip_address (optional)
        - connection_tracking_specification (optional, block):
            - tcp_established_timeout (optional)
            - udp_stream_timeout (optional)
            - udp_timeout (optional)
        - delete_on_termination (optional)
        - description (optional)
        - device_index (optional)
        - ena_queue_count (optional)
        - ena_srd_specification (optional, block):
            - ena_srd_enabled (optional)
            - ena_srd_udp_specification (optional, block):
                - ena_srd_udp_enabled (optional)
        - interface_type (optional)
        - ipv4_address_count (optional)
        - ipv4_addresses (optional)
        - ipv4_prefix_count (optional)
        - ipv4_prefixes (optional)
        - ipv6_address_count (optional)
        - ipv6_addresses (optional)
        - ipv6_prefix_count (optional)
        - ipv6_prefixes (optional)
        - network_card_index (optional)
        - network_interface_id (optional)
        - primary_ipv6 (optional)
        - private_ip_address (optional)
        - security_groups (optional)
        - subnet_id (optional)
    - network_performance_options (block):
        - bandwidth_weighting (optional)
    - placement (block):
        - affinity (optional)
        - availability_zone (optional)
        - group_id (optional)
        - group_name (optional)
        - host_id (optional)
        - host_resource_group_arn (optional)
        - partition_number (optional)
        - spread_domain (optional)
        - tenancy (optional)
    - private_dns_name_options (block):
        - enable_resource_name_dns_a_record (optional)
        - enable_resource_name_dns_aaaa_record (optional)
        - hostname_type (optional)
    - secondary_interfaces (block):
        - delete_on_termination (optional)
        - device_index (optional)
        - interface_type (optional)
        - network_card_index (optional)
        - private_ip_address_count (optional)
        - private_ip_addresses (optional)
        - secondary_subnet_id (optional)
    - tag_specifications (block):
        - resource_type (optional)
        - tags (optional)
EOT

  type = map(object({
    default_version                      = optional(number)
    update_default_version               = optional(bool)
    tags_all                             = optional(map(string))
    tags                                 = optional(map(string))
    security_group_names                 = optional(set(string))
    region                               = optional(string)
    ram_disk_id                          = optional(string)
    name_prefix                          = optional(string)
    name                                 = optional(string)
    key_name                             = optional(string)
    kernel_id                            = optional(string)
    instance_type                        = optional(string)
    instance_initiated_shutdown_behavior = optional(string)
    image_id                             = optional(string)
    ebs_optimized                        = optional(string)
    disable_api_termination              = optional(bool)
    disable_api_stop                     = optional(bool)
    description                          = optional(string)
    user_data                            = optional(string)
    vpc_security_group_ids               = optional(set(string))
    block_device_mappings = optional(list(object({
      device_name = optional(string)
      ebs = optional(object({
        delete_on_termination      = optional(string)
        encrypted                  = optional(string)
        iops                       = optional(number)
        kms_key_id                 = optional(string)
        snapshot_id                = optional(string)
        throughput                 = optional(number)
        volume_initialization_rate = optional(number)
        volume_size                = optional(number)
        volume_type                = optional(string)
      }))
      no_device    = optional(string)
      virtual_name = optional(string)
    })))
    private_dns_name_options = optional(object({
      enable_resource_name_dns_a_record    = optional(bool)
      enable_resource_name_dns_aaaa_record = optional(bool)
      hostname_type                        = optional(string)
    }))
    placement = optional(object({
      affinity                = optional(string)
      availability_zone       = optional(string)
      group_id                = optional(string)
      group_name              = optional(string)
      host_id                 = optional(string)
      host_resource_group_arn = optional(string)
      partition_number        = optional(number)
      spread_domain           = optional(string)
      tenancy                 = optional(string)
    }))
    network_performance_options = optional(object({
      bandwidth_weighting = optional(string)
    }))
    network_interfaces = optional(list(object({
      associate_carrier_ip_address = optional(string)
      associate_public_ip_address  = optional(string)
      connection_tracking_specification = optional(object({
        tcp_established_timeout = optional(number)
        udp_stream_timeout      = optional(number)
        udp_timeout             = optional(number)
      }))
      delete_on_termination = optional(string)
      description           = optional(string)
      device_index          = optional(number)
      ena_queue_count       = optional(number)
      ena_srd_specification = optional(object({
        ena_srd_enabled = optional(bool)
        ena_srd_udp_specification = optional(object({
          ena_srd_udp_enabled = optional(bool)
        }))
      }))
      interface_type       = optional(string)
      ipv4_address_count   = optional(number)
      ipv4_addresses       = optional(set(string))
      ipv4_prefix_count    = optional(number)
      ipv4_prefixes        = optional(set(string))
      ipv6_address_count   = optional(number)
      ipv6_addresses       = optional(set(string))
      ipv6_prefix_count    = optional(number)
      ipv6_prefixes        = optional(set(string))
      network_card_index   = optional(number)
      network_interface_id = optional(string)
      primary_ipv6         = optional(string)
      private_ip_address   = optional(string)
      security_groups      = optional(set(string))
      subnet_id            = optional(string)
    })))
    monitoring = optional(object({
      enabled = optional(bool)
    }))
    metadata_options = optional(object({
      http_endpoint               = optional(string)
      http_protocol_ipv6          = optional(string)
      http_put_response_hop_limit = optional(number)
      http_tokens                 = optional(string)
      instance_metadata_tags      = optional(string)
    }))
    maintenance_options = optional(object({
      auto_recovery = optional(string)
    }))
    secondary_interfaces = optional(list(object({
      delete_on_termination    = optional(bool)
      device_index             = optional(number)
      interface_type           = optional(string)
      network_card_index       = optional(number)
      private_ip_address_count = optional(number)
      private_ip_addresses     = optional(set(string))
      secondary_subnet_id      = optional(string)
    })))
    license_specification = optional(list(object({
      license_configuration_arn = string
    })))
    instance_market_options = optional(object({
      market_type = optional(string)
      spot_options = optional(object({
        block_duration_minutes         = optional(number)
        instance_interruption_behavior = optional(string)
        max_price                      = optional(string)
        spot_instance_type             = optional(string)
        valid_until                    = optional(string)
      }))
    }))
    iam_instance_profile = optional(object({
      arn  = optional(string)
      name = optional(string)
    }))
    hibernation_options = optional(object({
      configured = bool
    }))
    enclave_options = optional(object({
      enabled = optional(bool)
    }))
    credit_specification = optional(object({
      cpu_credits = optional(string)
    }))
    cpu_options = optional(object({
      amd_sev_snp           = optional(string)
      core_count            = optional(number)
      nested_virtualization = optional(string)
      threads_per_core      = optional(number)
    }))
    capacity_reservation_specification = optional(object({
      capacity_reservation_preference = optional(string)
      capacity_reservation_target = optional(object({
        capacity_reservation_id                 = optional(string)
        capacity_reservation_resource_group_arn = optional(string)
      }))
    }))
    instance_requirements = optional(object({
      accelerator_count = optional(object({
        max = optional(number)
        min = optional(number)
      }))
      accelerator_manufacturers = optional(set(string))
      accelerator_names         = optional(set(string))
      accelerator_total_memory_mib = optional(object({
        max = optional(number)
        min = optional(number)
      }))
      accelerator_types      = optional(set(string))
      allowed_instance_types = optional(set(string))
      bare_metal             = optional(string)
      baseline_ebs_bandwidth_mbps = optional(object({
        max = optional(number)
        min = optional(number)
      }))
      burstable_performance                                   = optional(string)
      cpu_manufacturers                                       = optional(set(string))
      excluded_instance_types                                 = optional(set(string))
      instance_generations                                    = optional(set(string))
      local_storage                                           = optional(string)
      local_storage_types                                     = optional(set(string))
      max_spot_price_as_percentage_of_optimal_on_demand_price = optional(number)
      memory_gib_per_vcpu = optional(object({
        max = optional(number)
        min = optional(number)
      }))
      memory_mib = object({
        max = optional(number)
        min = number
      })
      network_bandwidth_gbps = optional(object({
        max = optional(number)
        min = optional(number)
      }))
      network_interface_count = optional(object({
        max = optional(number)
        min = optional(number)
      }))
      on_demand_max_price_percentage_over_lowest_price = optional(number)
      require_hibernate_support                        = optional(bool)
      spot_max_price_percentage_over_lowest_price      = optional(number)
      total_local_storage_gb = optional(object({
        max = optional(number)
        min = optional(number)
      }))
      vcpu_count = object({
        max = optional(number)
        min = number
      })
    }))
    tag_specifications = optional(list(object({
      resource_type = optional(string)
      tags          = optional(map(string))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.block_device_mappings == null || alltrue([for item in v.block_device_mappings : (item.ebs == null || (item.ebs.volume_initialization_rate == null || (item.ebs.volume_initialization_rate >= 100 && item.ebs.volume_initialization_rate <= 300)))])
      )
    ])
    error_message = "must be between 100 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.default_version == null || (v.default_version >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.instance_market_options == null || (v.instance_market_options.spot_options == null || (v.instance_market_options.spot_options.block_duration_minutes == null || ((v.instance_market_options.spot_options.block_duration_minutes % 60) == 0)))
      )
    ])
    error_message = "must be divisible by 60"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.instance_requirements == null || (v.instance_requirements.max_spot_price_as_percentage_of_optimal_on_demand_price == null || (v.instance_requirements.max_spot_price_as_percentage_of_optimal_on_demand_price >= 1))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.instance_requirements == null || (v.instance_requirements.on_demand_max_price_percentage_over_lowest_price == null || (v.instance_requirements.on_demand_max_price_percentage_over_lowest_price >= 1))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.instance_requirements == null || (v.instance_requirements.spot_max_price_percentage_over_lowest_price == null || (v.instance_requirements.spot_max_price_percentage_over_lowest_price >= 1))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.metadata_options == null || (v.metadata_options.http_put_response_hop_limit == null || (v.metadata_options.http_put_response_hop_limit >= 1 && v.metadata_options.http_put_response_hop_limit <= 64))
      )
    ])
    error_message = "must be between 1 and 64"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.network_interfaces == null || alltrue([for item in v.network_interfaces : (item.connection_tracking_specification == null || (item.connection_tracking_specification.tcp_established_timeout == null || (item.connection_tracking_specification.tcp_established_timeout >= 60 && item.connection_tracking_specification.tcp_established_timeout <= 432000)))])
      )
    ])
    error_message = "must be between 60 and 432000"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.network_interfaces == null || alltrue([for item in v.network_interfaces : (item.connection_tracking_specification == null || (item.connection_tracking_specification.udp_stream_timeout == null || (item.connection_tracking_specification.udp_stream_timeout >= 60 && item.connection_tracking_specification.udp_stream_timeout <= 180)))])
      )
    ])
    error_message = "must be between 60 and 180"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.network_interfaces == null || alltrue([for item in v.network_interfaces : (item.connection_tracking_specification == null || (item.connection_tracking_specification.udp_timeout == null || (item.connection_tracking_specification.udp_timeout >= 30 && item.connection_tracking_specification.udp_timeout <= 60)))])
      )
    ])
    error_message = "must be between 30 and 60"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_templates : (
        v.network_interfaces == null || alltrue([for item in v.network_interfaces : (item.interface_type == null || (contains(["efa", "efa-only", "interface"], item.interface_type)))])
      )
    ])
    error_message = "must be one of: efa, efa-only, interface"
  }
  # Note: 75 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

