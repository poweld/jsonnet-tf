{
  local block = self,
  new(terraformName, vpcId, zoneId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_zone_association",
          type:: "resource",
          attributes:: ["id", "owning_account", "vpc_id", "vpc_region", "zone_id"],
        },
      },
    }
    + block.withVpcId(vpcId)
    + block.withZoneId(zoneId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withVpcRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_region" expected to be of type "string"';
    {
      vpc_region: converted,
    }
  ),
  withZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
