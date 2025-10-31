{
  local block = self,
  new(terraformName, direction, securityGroupIds):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_resolver_endpoint",
          type:: "resource",
          attributes:: ["arn", "direction", "host_vpc_id", "id", "name", "protocols", "region", "resolver_endpoint_type", "security_group_ids", "tags", "tags_all"],
        },
      },
    }
    + block.withDirection(direction)
    + block.withSecurityGroupIds(securityGroupIds)
  ),
  withDirection(value):: (
    local converted = value;
    assert std.isString(converted) : '"direction" expected to be of type "string"';
    {
      direction: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withProtocols(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
    {
      protocols: converted,
    }
  ),
  withProtocolsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
    {
      protocols+: converted,
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
  withResolverEndpointType(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolver_endpoint_type" expected to be of type "string"';
    {
      resolver_endpoint_type: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  ip_address:: {
    local block = self,
    new(subnetId):: (
      {}
      + block.withSubnetId(subnetId)
    ),
    withIp(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip" expected to be of type "string"';
      {
        ip: converted,
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
  withIpAddress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_address: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withIpAddressMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_address+: converted,
    }
  ),
}
