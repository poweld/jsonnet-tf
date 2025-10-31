{
  local block = self,
  new(terraformName, customerGatewayId, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpn_connection",
          type:: "resource",
          attributes:: ["arn", "core_network_arn", "core_network_attachment_arn", "customer_gateway_configuration", "customer_gateway_id", "enable_acceleration", "id", "local_ipv4_network_cidr", "local_ipv6_network_cidr", "outside_ip_address_type", "preshared_key_arn", "preshared_key_storage", "region", "remote_ipv4_network_cidr", "remote_ipv6_network_cidr", "routes", "static_routes_only", "tags", "tags_all", "transit_gateway_attachment_id", "transit_gateway_id", "transport_transit_gateway_attachment_id", "tunnel1_address", "tunnel1_bgp_asn", "tunnel1_bgp_holdtime", "tunnel1_cgw_inside_address", "tunnel1_dpd_timeout_action", "tunnel1_dpd_timeout_seconds", "tunnel1_enable_tunnel_lifecycle_control", "tunnel1_ike_versions", "tunnel1_inside_cidr", "tunnel1_inside_ipv6_cidr", "tunnel1_phase1_dh_group_numbers", "tunnel1_phase1_encryption_algorithms", "tunnel1_phase1_integrity_algorithms", "tunnel1_phase1_lifetime_seconds", "tunnel1_phase2_dh_group_numbers", "tunnel1_phase2_encryption_algorithms", "tunnel1_phase2_integrity_algorithms", "tunnel1_phase2_lifetime_seconds", "tunnel1_preshared_key", "tunnel1_rekey_fuzz_percentage", "tunnel1_rekey_margin_time_seconds", "tunnel1_replay_window_size", "tunnel1_startup_action", "tunnel1_vgw_inside_address", "tunnel2_address", "tunnel2_bgp_asn", "tunnel2_bgp_holdtime", "tunnel2_cgw_inside_address", "tunnel2_dpd_timeout_action", "tunnel2_dpd_timeout_seconds", "tunnel2_enable_tunnel_lifecycle_control", "tunnel2_ike_versions", "tunnel2_inside_cidr", "tunnel2_inside_ipv6_cidr", "tunnel2_phase1_dh_group_numbers", "tunnel2_phase1_encryption_algorithms", "tunnel2_phase1_integrity_algorithms", "tunnel2_phase1_lifetime_seconds", "tunnel2_phase2_dh_group_numbers", "tunnel2_phase2_encryption_algorithms", "tunnel2_phase2_integrity_algorithms", "tunnel2_phase2_lifetime_seconds", "tunnel2_preshared_key", "tunnel2_rekey_fuzz_percentage", "tunnel2_rekey_margin_time_seconds", "tunnel2_replay_window_size", "tunnel2_startup_action", "tunnel2_vgw_inside_address", "tunnel_inside_ip_version", "type", "vgw_telemetry", "vpn_gateway_id"],
        },
      },
    }
    + block.withCustomerGatewayId(customerGatewayId)
    + block.withType(type)
  ),
  withCustomerGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_gateway_id" expected to be of type "string"';
    {
      customer_gateway_id: converted,
    }
  ),
  withEnableAcceleration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_acceleration" expected to be of type "bool"';
    {
      enable_acceleration: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLocalIpv4NetworkCidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_ipv4_network_cidr" expected to be of type "string"';
    {
      local_ipv4_network_cidr: converted,
    }
  ),
  withLocalIpv6NetworkCidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_ipv6_network_cidr" expected to be of type "string"';
    {
      local_ipv6_network_cidr: converted,
    }
  ),
  withOutsideIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"outside_ip_address_type" expected to be of type "string"';
    {
      outside_ip_address_type: converted,
    }
  ),
  withPresharedKeyStorage(value):: (
    local converted = value;
    assert std.isString(converted) : '"preshared_key_storage" expected to be of type "string"';
    {
      preshared_key_storage: converted,
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
  withRemoteIpv4NetworkCidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"remote_ipv4_network_cidr" expected to be of type "string"';
    {
      remote_ipv4_network_cidr: converted,
    }
  ),
  withRemoteIpv6NetworkCidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"remote_ipv6_network_cidr" expected to be of type "string"';
    {
      remote_ipv6_network_cidr: converted,
    }
  ),
  withStaticRoutesOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"static_routes_only" expected to be of type "bool"';
    {
      static_routes_only: converted,
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
  withTransitGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  withTransportTransitGatewayAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transport_transit_gateway_attachment_id" expected to be of type "string"';
    {
      transport_transit_gateway_attachment_id: converted,
    }
  ),
  withTunnel1DpdTimeoutAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_dpd_timeout_action" expected to be of type "string"';
    {
      tunnel1_dpd_timeout_action: converted,
    }
  ),
  withTunnel1DpdTimeoutSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_dpd_timeout_seconds" expected to be of type "number"';
    {
      tunnel1_dpd_timeout_seconds: converted,
    }
  ),
  withTunnel1EnableTunnelLifecycleControl(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tunnel1_enable_tunnel_lifecycle_control" expected to be of type "bool"';
    {
      tunnel1_enable_tunnel_lifecycle_control: converted,
    }
  ),
  withTunnel1IkeVersions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_ike_versions" expected to be of type "set"';
    {
      tunnel1_ike_versions: converted,
    }
  ),
  withTunnel1IkeVersionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_ike_versions" expected to be of type "set"';
    {
      tunnel1_ike_versions+: converted,
    }
  ),
  withTunnel1InsideCidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_inside_cidr" expected to be of type "string"';
    {
      tunnel1_inside_cidr: converted,
    }
  ),
  withTunnel1InsideIpv6Cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_inside_ipv6_cidr" expected to be of type "string"';
    {
      tunnel1_inside_ipv6_cidr: converted,
    }
  ),
  withTunnel1Phase1DhGroupNumbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_dh_group_numbers" expected to be of type "set"';
    {
      tunnel1_phase1_dh_group_numbers: converted,
    }
  ),
  withTunnel1Phase1DhGroupNumbersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_dh_group_numbers" expected to be of type "set"';
    {
      tunnel1_phase1_dh_group_numbers+: converted,
    }
  ),
  withTunnel1Phase1EncryptionAlgorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_encryption_algorithms" expected to be of type "set"';
    {
      tunnel1_phase1_encryption_algorithms: converted,
    }
  ),
  withTunnel1Phase1EncryptionAlgorithmsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_encryption_algorithms" expected to be of type "set"';
    {
      tunnel1_phase1_encryption_algorithms+: converted,
    }
  ),
  withTunnel1Phase1IntegrityAlgorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_integrity_algorithms" expected to be of type "set"';
    {
      tunnel1_phase1_integrity_algorithms: converted,
    }
  ),
  withTunnel1Phase1IntegrityAlgorithmsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase1_integrity_algorithms" expected to be of type "set"';
    {
      tunnel1_phase1_integrity_algorithms+: converted,
    }
  ),
  withTunnel1Phase1LifetimeSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_phase1_lifetime_seconds" expected to be of type "number"';
    {
      tunnel1_phase1_lifetime_seconds: converted,
    }
  ),
  withTunnel1Phase2DhGroupNumbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_dh_group_numbers" expected to be of type "set"';
    {
      tunnel1_phase2_dh_group_numbers: converted,
    }
  ),
  withTunnel1Phase2DhGroupNumbersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_dh_group_numbers" expected to be of type "set"';
    {
      tunnel1_phase2_dh_group_numbers+: converted,
    }
  ),
  withTunnel1Phase2EncryptionAlgorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_encryption_algorithms" expected to be of type "set"';
    {
      tunnel1_phase2_encryption_algorithms: converted,
    }
  ),
  withTunnel1Phase2EncryptionAlgorithmsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_encryption_algorithms" expected to be of type "set"';
    {
      tunnel1_phase2_encryption_algorithms+: converted,
    }
  ),
  withTunnel1Phase2IntegrityAlgorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_integrity_algorithms" expected to be of type "set"';
    {
      tunnel1_phase2_integrity_algorithms: converted,
    }
  ),
  withTunnel1Phase2IntegrityAlgorithmsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel1_phase2_integrity_algorithms" expected to be of type "set"';
    {
      tunnel1_phase2_integrity_algorithms+: converted,
    }
  ),
  withTunnel1Phase2LifetimeSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_phase2_lifetime_seconds" expected to be of type "number"';
    {
      tunnel1_phase2_lifetime_seconds: converted,
    }
  ),
  withTunnel1PresharedKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_preshared_key" expected to be of type "string"';
    {
      tunnel1_preshared_key: converted,
    }
  ),
  withTunnel1RekeyFuzzPercentage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_rekey_fuzz_percentage" expected to be of type "number"';
    {
      tunnel1_rekey_fuzz_percentage: converted,
    }
  ),
  withTunnel1RekeyMarginTimeSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_rekey_margin_time_seconds" expected to be of type "number"';
    {
      tunnel1_rekey_margin_time_seconds: converted,
    }
  ),
  withTunnel1ReplayWindowSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel1_replay_window_size" expected to be of type "number"';
    {
      tunnel1_replay_window_size: converted,
    }
  ),
  withTunnel1StartupAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel1_startup_action" expected to be of type "string"';
    {
      tunnel1_startup_action: converted,
    }
  ),
  withTunnel2DpdTimeoutAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_dpd_timeout_action" expected to be of type "string"';
    {
      tunnel2_dpd_timeout_action: converted,
    }
  ),
  withTunnel2DpdTimeoutSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_dpd_timeout_seconds" expected to be of type "number"';
    {
      tunnel2_dpd_timeout_seconds: converted,
    }
  ),
  withTunnel2EnableTunnelLifecycleControl(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tunnel2_enable_tunnel_lifecycle_control" expected to be of type "bool"';
    {
      tunnel2_enable_tunnel_lifecycle_control: converted,
    }
  ),
  withTunnel2IkeVersions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_ike_versions" expected to be of type "set"';
    {
      tunnel2_ike_versions: converted,
    }
  ),
  withTunnel2IkeVersionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_ike_versions" expected to be of type "set"';
    {
      tunnel2_ike_versions+: converted,
    }
  ),
  withTunnel2InsideCidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_inside_cidr" expected to be of type "string"';
    {
      tunnel2_inside_cidr: converted,
    }
  ),
  withTunnel2InsideIpv6Cidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_inside_ipv6_cidr" expected to be of type "string"';
    {
      tunnel2_inside_ipv6_cidr: converted,
    }
  ),
  withTunnel2Phase1DhGroupNumbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_dh_group_numbers" expected to be of type "set"';
    {
      tunnel2_phase1_dh_group_numbers: converted,
    }
  ),
  withTunnel2Phase1DhGroupNumbersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_dh_group_numbers" expected to be of type "set"';
    {
      tunnel2_phase1_dh_group_numbers+: converted,
    }
  ),
  withTunnel2Phase1EncryptionAlgorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_encryption_algorithms" expected to be of type "set"';
    {
      tunnel2_phase1_encryption_algorithms: converted,
    }
  ),
  withTunnel2Phase1EncryptionAlgorithmsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_encryption_algorithms" expected to be of type "set"';
    {
      tunnel2_phase1_encryption_algorithms+: converted,
    }
  ),
  withTunnel2Phase1IntegrityAlgorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_integrity_algorithms" expected to be of type "set"';
    {
      tunnel2_phase1_integrity_algorithms: converted,
    }
  ),
  withTunnel2Phase1IntegrityAlgorithmsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase1_integrity_algorithms" expected to be of type "set"';
    {
      tunnel2_phase1_integrity_algorithms+: converted,
    }
  ),
  withTunnel2Phase1LifetimeSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_phase1_lifetime_seconds" expected to be of type "number"';
    {
      tunnel2_phase1_lifetime_seconds: converted,
    }
  ),
  withTunnel2Phase2DhGroupNumbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_dh_group_numbers" expected to be of type "set"';
    {
      tunnel2_phase2_dh_group_numbers: converted,
    }
  ),
  withTunnel2Phase2DhGroupNumbersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_dh_group_numbers" expected to be of type "set"';
    {
      tunnel2_phase2_dh_group_numbers+: converted,
    }
  ),
  withTunnel2Phase2EncryptionAlgorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_encryption_algorithms" expected to be of type "set"';
    {
      tunnel2_phase2_encryption_algorithms: converted,
    }
  ),
  withTunnel2Phase2EncryptionAlgorithmsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_encryption_algorithms" expected to be of type "set"';
    {
      tunnel2_phase2_encryption_algorithms+: converted,
    }
  ),
  withTunnel2Phase2IntegrityAlgorithms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_integrity_algorithms" expected to be of type "set"';
    {
      tunnel2_phase2_integrity_algorithms: converted,
    }
  ),
  withTunnel2Phase2IntegrityAlgorithmsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tunnel2_phase2_integrity_algorithms" expected to be of type "set"';
    {
      tunnel2_phase2_integrity_algorithms+: converted,
    }
  ),
  withTunnel2Phase2LifetimeSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_phase2_lifetime_seconds" expected to be of type "number"';
    {
      tunnel2_phase2_lifetime_seconds: converted,
    }
  ),
  withTunnel2PresharedKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_preshared_key" expected to be of type "string"';
    {
      tunnel2_preshared_key: converted,
    }
  ),
  withTunnel2RekeyFuzzPercentage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_rekey_fuzz_percentage" expected to be of type "number"';
    {
      tunnel2_rekey_fuzz_percentage: converted,
    }
  ),
  withTunnel2RekeyMarginTimeSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_rekey_margin_time_seconds" expected to be of type "number"';
    {
      tunnel2_rekey_margin_time_seconds: converted,
    }
  ),
  withTunnel2ReplayWindowSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tunnel2_replay_window_size" expected to be of type "number"';
    {
      tunnel2_replay_window_size: converted,
    }
  ),
  withTunnel2StartupAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel2_startup_action" expected to be of type "string"';
    {
      tunnel2_startup_action: converted,
    }
  ),
  withTunnelInsideIpVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"tunnel_inside_ip_version" expected to be of type "string"';
    {
      tunnel_inside_ip_version: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withVpnGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_gateway_id" expected to be of type "string"';
    {
      vpn_gateway_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  tunnel1_log_options:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_log_options:: {
      local block = self,
      new():: (
        {}
      ),
      withLogEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"log_enabled" expected to be of type "bool"';
        {
          log_enabled: converted,
        }
      ),
      withLogGroupArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
        {
          log_group_arn: converted,
        }
      ),
      withLogOutputFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_output_format" expected to be of type "string"';
        {
          log_output_format: converted,
        }
      ),
    },
    withCloudwatchLogOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_options: value,
      }
    ),
    withCloudwatchLogOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_options+: converted,
      }
    ),
  },
  tunnel2_log_options:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_log_options:: {
      local block = self,
      new():: (
        {}
      ),
      withLogEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"log_enabled" expected to be of type "bool"';
        {
          log_enabled: converted,
        }
      ),
      withLogGroupArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
        {
          log_group_arn: converted,
        }
      ),
      withLogOutputFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_output_format" expected to be of type "string"';
        {
          log_output_format: converted,
        }
      ),
    },
    withCloudwatchLogOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_options: value,
      }
    ),
    withCloudwatchLogOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_options+: converted,
      }
    ),
  },
  withTunnel1LogOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tunnel1_log_options: value,
    }
  ),
  withTunnel2LogOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tunnel2_log_options: value,
    }
  ),
  withTunnel1LogOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tunnel1_log_options+: converted,
    }
  ),
  withTunnel2LogOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tunnel2_log_options+: converted,
    }
  ),
}
