{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc",
          type:: "data",
          attributes:: ["arn", "cidr_block", "cidr_block_associations", "default", "dhcp_options_id", "enable_dns_hostnames", "enable_dns_support", "enable_network_address_usage_metrics", "id", "instance_tenancy", "ipv6_association_id", "ipv6_cidr_block", "main_route_table_id", "owner_id", "region", "state", "tags"],
        },
      },
    }
  ),
  withCidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
    {
      cidr_block: converted,
    }
  ),
  withDefault(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default" expected to be of type "bool"';
    {
      default: converted,
    }
  ),
  withDhcpOptionsId(value):: (
    local converted = value;
    assert std.isString(converted) : '"dhcp_options_id" expected to be of type "string"';
    {
      dhcp_options_id: converted,
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
  withState(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.withName(name)
      + block.withValues(values)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
