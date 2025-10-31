{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpclattice_resource_configuration",
          type:: "resource",
          attributes:: ["allow_association_to_shareable_service_network", "arn", "id", "name", "port_ranges", "protocol", "region", "resource_configuration_group_id", "resource_gateway_identifier", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
  ),
  withAllowAssociationToShareableServiceNetwork(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_association_to_shareable_service_network" expected to be of type "bool"';
    {
      allow_association_to_shareable_service_network: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPortRanges(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"port_ranges" expected to be of type "set"';
    {
      port_ranges: converted,
    }
  ),
  withPortRangesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"port_ranges" expected to be of type "set"';
    {
      port_ranges+: converted,
    }
  ),
  withProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  withResourceConfigurationGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_configuration_group_id" expected to be of type "string"';
    {
      resource_configuration_group_id: converted,
    }
  ),
  withResourceGatewayIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_gateway_identifier" expected to be of type "string"';
    {
      resource_gateway_identifier: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  resource_configuration_definition:: {
    local block = self,
    new():: (
      {}
    ),
    arn_resource:: {
      local block = self,
      new(arn):: (
        {}
        + block.withArn(arn)
      ),
      withArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    dns_resource:: {
      local block = self,
      new(domainName, ipAddressType):: (
        {}
        + block.withDomainName(domainName)
        + block.withIpAddressType(ipAddressType)
      ),
      withDomainName(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain_name" expected to be of type "string"';
        {
          domain_name: converted,
        }
      ),
      withIpAddressType(value):: (
        local converted = value;
        assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
        {
          ip_address_type: converted,
        }
      ),
    },
    ip_resource:: {
      local block = self,
      new(ipAddress):: (
        {}
        + block.withIpAddress(ipAddress)
      ),
      withIpAddress(value):: (
        local converted = value;
        assert std.isString(converted) : '"ip_address" expected to be of type "string"';
        {
          ip_address: converted,
        }
      ),
    },
    withArnResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        arn_resource: value,
      }
    ),
    withDnsResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_resource: value,
      }
    ),
    withIpResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ip_resource: value,
      }
    ),
    withArnResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        arn_resource+: converted,
      }
    ),
    withDnsResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_resource+: converted,
      }
    ),
    withIpResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ip_resource+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withResourceConfigurationDefinition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_configuration_definition: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withResourceConfigurationDefinitionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_configuration_definition+: converted,
    }
  ),
}
