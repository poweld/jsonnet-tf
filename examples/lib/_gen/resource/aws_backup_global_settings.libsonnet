{
  local block = self,
  new(terraformName, globalSettings):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_global_settings",
          type:: "resource",
          attributes:: ["global_settings", "id"],
        },
      },
    }
    + block.withGlobalSettings(globalSettings)
  ),
  withGlobalSettings(value):: (
    local converted = value;
    assert std.isObject(converted) : '"global_settings" expected to be of type "map"';
    {
      global_settings: converted,
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
}
