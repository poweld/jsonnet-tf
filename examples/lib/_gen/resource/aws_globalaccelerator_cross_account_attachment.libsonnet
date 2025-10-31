{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_globalaccelerator_cross_account_attachment",
          type:: "resource",
          attributes:: ["arn", "created_time", "id", "last_modified_time", "name", "principals", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPrincipals(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"principals" expected to be of type "set"';
    {
      principals: converted,
    }
  ),
  withPrincipalsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"principals" expected to be of type "set"';
    {
      principals+: converted,
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
  resource:: {
    local block = self,
    new():: (
      {}
    ),
    withCidrBlock(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
      {
        cidr_block: converted,
      }
    ),
    withEndpointId(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
      {
        endpoint_id: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
  },
  withResource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource: value,
    }
  ),
  withResourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource+: converted,
    }
  ),
}
