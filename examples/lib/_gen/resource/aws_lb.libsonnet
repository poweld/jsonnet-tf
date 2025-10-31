{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lb",
          type:: "resource",
          attributes:: ["arn", "arn_suffix", "client_keep_alive", "customer_owned_ipv4_pool", "desync_mitigation_mode", "dns_name", "dns_record_client_routing_policy", "drop_invalid_header_fields", "enable_cross_zone_load_balancing", "enable_deletion_protection", "enable_http2", "enable_tls_version_and_cipher_suite_headers", "enable_waf_fail_open", "enable_xff_client_port", "enable_zonal_shift", "enforce_security_group_inbound_rules_on_private_link_traffic", "id", "idle_timeout", "internal", "ip_address_type", "load_balancer_type", "name", "name_prefix", "preserve_host_header", "region", "secondary_ips_auto_assigned_per_subnet", "security_groups", "subnets", "tags", "tags_all", "vpc_id", "xff_header_processing_mode", "zone_id"],
        },
      },
    }
  ),
  withClientKeepAlive(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"client_keep_alive" expected to be of type "number"';
    {
      client_keep_alive: converted,
    }
  ),
  withCustomerOwnedIpv4Pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_owned_ipv4_pool" expected to be of type "string"';
    {
      customer_owned_ipv4_pool: converted,
    }
  ),
  withDesyncMitigationMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"desync_mitigation_mode" expected to be of type "string"';
    {
      desync_mitigation_mode: converted,
    }
  ),
  withDnsRecordClientRoutingPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_record_client_routing_policy" expected to be of type "string"';
    {
      dns_record_client_routing_policy: converted,
    }
  ),
  withDropInvalidHeaderFields(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"drop_invalid_header_fields" expected to be of type "bool"';
    {
      drop_invalid_header_fields: converted,
    }
  ),
  withEnableCrossZoneLoadBalancing(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_cross_zone_load_balancing" expected to be of type "bool"';
    {
      enable_cross_zone_load_balancing: converted,
    }
  ),
  withEnableDeletionProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_deletion_protection" expected to be of type "bool"';
    {
      enable_deletion_protection: converted,
    }
  ),
  withEnableHttp2(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_http2" expected to be of type "bool"';
    {
      enable_http2: converted,
    }
  ),
  withEnableTlsVersionAndCipherSuiteHeaders(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_tls_version_and_cipher_suite_headers" expected to be of type "bool"';
    {
      enable_tls_version_and_cipher_suite_headers: converted,
    }
  ),
  withEnableWafFailOpen(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_waf_fail_open" expected to be of type "bool"';
    {
      enable_waf_fail_open: converted,
    }
  ),
  withEnableXffClientPort(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_xff_client_port" expected to be of type "bool"';
    {
      enable_xff_client_port: converted,
    }
  ),
  withEnableZonalShift(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_zonal_shift" expected to be of type "bool"';
    {
      enable_zonal_shift: converted,
    }
  ),
  withEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic(value):: (
    local converted = value;
    assert std.isString(converted) : '"enforce_security_group_inbound_rules_on_private_link_traffic" expected to be of type "string"';
    {
      enforce_security_group_inbound_rules_on_private_link_traffic: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdleTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_timeout" expected to be of type "number"';
    {
      idle_timeout: converted,
    }
  ),
  withInternal(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"internal" expected to be of type "bool"';
    {
      internal: converted,
    }
  ),
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  withLoadBalancerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_type" expected to be of type "string"';
    {
      load_balancer_type: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPreserveHostHeader(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"preserve_host_header" expected to be of type "bool"';
    {
      preserve_host_header: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSecondaryIpsAutoAssignedPerSubnet(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"secondary_ips_auto_assigned_per_subnet" expected to be of type "number"';
    {
      secondary_ips_auto_assigned_per_subnet: converted,
    }
  ),
  withSecurityGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  withSecurityGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  withSubnets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets: converted,
    }
  ),
  withSubnetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets+: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withXffHeaderProcessingMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"xff_header_processing_mode" expected to be of type "string"';
    {
      xff_header_processing_mode: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  access_logs:: {
    local block = self,
    new(bucket):: (
      {}
      + block.withBucket(bucket)
    ),
    withBucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  connection_logs:: {
    local block = self,
    new(bucket):: (
      {}
      + block.withBucket(bucket)
    ),
    withBucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  ipam_pools:: {
    local block = self,
    new(ipv4IpamPoolId):: (
      {}
      + block.withIpv4IpamPoolId(ipv4IpamPoolId)
    ),
    withIpv4IpamPoolId(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv4_ipam_pool_id" expected to be of type "string"';
      {
        ipv4_ipam_pool_id: converted,
      }
    ),
  },
  minimum_load_balancer_capacity:: {
    local block = self,
    new(capacityUnits):: (
      {}
      + block.withCapacityUnits(capacityUnits)
    ),
    withCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"capacity_units" expected to be of type "number"';
      {
        capacity_units: converted,
      }
    ),
  },
  subnet_mapping:: {
    local block = self,
    new(subnetId):: (
      {}
      + block.withSubnetId(subnetId)
    ),
    withAllocationId(value):: (
      local converted = value;
      assert std.isString(converted) : '"allocation_id" expected to be of type "string"';
      {
        allocation_id: converted,
      }
    ),
    withIpv6Address(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv6_address" expected to be of type "string"';
      {
        ipv6_address: converted,
      }
    ),
    withPrivateIpv4Address(value):: (
      local converted = value;
      assert std.isString(converted) : '"private_ipv4_address" expected to be of type "string"';
      {
        private_ipv4_address: converted,
      }
    ),
    withSubnetId(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAccessLogs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs: value,
    }
  ),
  withConnectionLogs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_logs: value,
    }
  ),
  withIpamPools(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ipam_pools: value,
    }
  ),
  withMinimumLoadBalancerCapacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      minimum_load_balancer_capacity: value,
    }
  ),
  withSubnetMapping(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_mapping: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAccessLogsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs+: converted,
    }
  ),
  withConnectionLogsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_logs+: converted,
    }
  ),
  withIpamPoolsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ipam_pools+: converted,
    }
  ),
  withMinimumLoadBalancerCapacityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      minimum_load_balancer_capacity+: converted,
    }
  ),
  withSubnetMappingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_mapping+: converted,
    }
  ),
}
