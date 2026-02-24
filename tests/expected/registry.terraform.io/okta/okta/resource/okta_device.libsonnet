{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_device",
          type:: "resource",
          attributes:: ["action", "id", "resource_type", "status"],
        },
      },
    }
  ),

  "#withAction":: "The action of the device.",
  withAction(value):: (
    assert std.isString(value) : '"action" expected to be of type "string"';

    {
      action: value,
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
