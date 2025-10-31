{
  local block = self,
  new(terraformName, serverCertificateArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_client_vpn_endpoint",
          type:: "resource",
          attributes:: ["arn", "client_cidr_block", "description", "disconnect_on_session_timeout", "dns_name", "dns_servers", "endpoint_ip_address_type", "id", "region", "security_group_ids", "self_service_portal", "self_service_portal_url", "server_certificate_arn", "session_timeout_hours", "split_tunnel", "tags", "tags_all", "traffic_ip_address_type", "transport_protocol", "vpc_id", "vpn_port"],
        },
      },
    }
    + block.withServerCertificateArn(serverCertificateArn)
  ),
  withClientCidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_cidr_block" expected to be of type "string"';
    {
      client_cidr_block: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDisconnectOnSessionTimeout(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disconnect_on_session_timeout" expected to be of type "bool"';
    {
      disconnect_on_session_timeout: converted,
    }
  ),
  withDnsServers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_servers" expected to be of type "list"';
    {
      dns_servers: converted,
    }
  ),
  withDnsServersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_servers" expected to be of type "list"';
    {
      dns_servers+: converted,
    }
  ),
  withEndpointIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_ip_address_type" expected to be of type "string"';
    {
      endpoint_ip_address_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  withSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  withSelfServicePortal(value):: (
    local converted = value;
    assert std.isString(converted) : '"self_service_portal" expected to be of type "string"';
    {
      self_service_portal: converted,
    }
  ),
  withServerCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_certificate_arn" expected to be of type "string"';
    {
      server_certificate_arn: converted,
    }
  ),
  withSessionTimeoutHours(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"session_timeout_hours" expected to be of type "number"';
    {
      session_timeout_hours: converted,
    }
  ),
  withSplitTunnel(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"split_tunnel" expected to be of type "bool"';
    {
      split_tunnel: converted,
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
  withTrafficIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_ip_address_type" expected to be of type "string"';
    {
      traffic_ip_address_type: converted,
    }
  ),
  withTransportProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"transport_protocol" expected to be of type "string"';
    {
      transport_protocol: converted,
    }
  ),
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withVpnPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"vpn_port" expected to be of type "number"';
    {
      vpn_port: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  authentication_options:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withActiveDirectoryId(value):: (
      local converted = value;
      assert std.isString(converted) : '"active_directory_id" expected to be of type "string"';
      {
        active_directory_id: converted,
      }
    ),
    withRootCertificateChainArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"root_certificate_chain_arn" expected to be of type "string"';
      {
        root_certificate_chain_arn: converted,
      }
    ),
    withSamlProviderArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"saml_provider_arn" expected to be of type "string"';
      {
        saml_provider_arn: converted,
      }
    ),
    withSelfServiceSamlProviderArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"self_service_saml_provider_arn" expected to be of type "string"';
      {
        self_service_saml_provider_arn: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  client_connect_options:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withLambdaFunctionArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda_function_arn" expected to be of type "string"';
      {
        lambda_function_arn: converted,
      }
    ),
  },
  client_login_banner_options:: {
    local block = self,
    new():: (
      {}
    ),
    withBannerText(value):: (
      local converted = value;
      assert std.isString(converted) : '"banner_text" expected to be of type "string"';
      {
        banner_text: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  client_route_enforcement_options:: {
    local block = self,
    new():: (
      {}
    ),
    withEnforced(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enforced" expected to be of type "bool"';
      {
        enforced: converted,
      }
    ),
  },
  connection_log_options:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withCloudwatchLogGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch_log_group" expected to be of type "string"';
      {
        cloudwatch_log_group: converted,
      }
    ),
    withCloudwatchLogStream(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch_log_stream" expected to be of type "string"';
      {
        cloudwatch_log_stream: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  withAuthenticationOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_options: value,
    }
  ),
  withClientConnectOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_connect_options: value,
    }
  ),
  withClientLoginBannerOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_login_banner_options: value,
    }
  ),
  withClientRouteEnforcementOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_route_enforcement_options: value,
    }
  ),
  withConnectionLogOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_log_options: value,
    }
  ),
  withAuthenticationOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_options+: converted,
    }
  ),
  withClientConnectOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_connect_options+: converted,
    }
  ),
  withClientLoginBannerOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_login_banner_options+: converted,
    }
  ),
  withClientRouteEnforcementOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_route_enforcement_options+: converted,
    }
  ),
  withConnectionLogOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_log_options+: converted,
    }
  ),
}
