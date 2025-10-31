{
  local block = self,
  new(terraformName, hostedZoneId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_hosted_zone_dnssec",
          type:: "resource",
          attributes:: ["hosted_zone_id", "id", "signing_status"],
        },
      },
    }
    + block.withHostedZoneId(hostedZoneId)
  ),
  withHostedZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withSigningStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_status" expected to be of type "string"';
    {
      signing_status: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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
