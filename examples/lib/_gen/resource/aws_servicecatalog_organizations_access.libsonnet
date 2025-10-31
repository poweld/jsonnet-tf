{
  local block = self,
  new(terraformName, enabled):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicecatalog_organizations_access",
          type:: "resource",
          attributes:: ["enabled", "id"],
        },
      },
    }
    + block.withEnabled(enabled)
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
