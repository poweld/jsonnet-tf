{
  local block = self,
  new(terraformName, vpcId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_endpoint",
          type:: "resource",
          attributes:: ["arn", "auto_accept", "cidr_blocks", "dns_entry", "id", "ip_address_type", "network_interface_ids", "owner_id", "policy", "prefix_list_id", "private_dns_enabled", "region", "requester_managed", "resource_configuration_arn", "route_table_ids", "security_group_ids", "service_name", "service_network_arn", "service_region", "state", "subnet_ids", "tags", "tags_all", "vpc_endpoint_type", "vpc_id"],
        },
      },
    }
    + block.withVpcId(vpcId)
  ),
  withAutoAccept(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_accept" expected to be of type "bool"';
    {
      auto_accept: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
    }
  ),
  withPrivateDnsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"private_dns_enabled" expected to be of type "bool"';
    {
      private_dns_enabled: converted,
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
  withResourceConfigurationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_configuration_arn" expected to be of type "string"';
    {
      resource_configuration_arn: converted,
    }
  ),
  withRouteTableIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids: converted,
    }
  ),
  withRouteTableIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids+: converted,
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
  withServiceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  withServiceNetworkArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_network_arn" expected to be of type "string"';
    {
      service_network_arn: converted,
    }
  ),
  withServiceRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_region" expected to be of type "string"';
    {
      service_region: converted,
    }
  ),
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  withVpcEndpointType(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_type" expected to be of type "string"';
    {
      vpc_endpoint_type: converted,
    }
  ),
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  dns_options:: {
    local block = self,
    new():: (
      {}
    ),
    withDnsRecordIpType(value):: (
      local converted = value;
      assert std.isString(converted) : '"dns_record_ip_type" expected to be of type "string"';
      {
        dns_record_ip_type: converted,
      }
    ),
    withPrivateDnsOnlyForInboundResolverEndpoint(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"private_dns_only_for_inbound_resolver_endpoint" expected to be of type "bool"';
      {
        private_dns_only_for_inbound_resolver_endpoint: converted,
      }
    ),
  },
  subnet_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withIpv4(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv4" expected to be of type "string"';
      {
        ipv4: converted,
      }
    ),
    withIpv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv6" expected to be of type "string"';
      {
        ipv6: converted,
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
  withDnsOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dns_options: value,
    }
  ),
  withSubnetConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDnsOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dns_options+: converted,
    }
  ),
  withSubnetConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_configuration+: converted,
    }
  ),
}
