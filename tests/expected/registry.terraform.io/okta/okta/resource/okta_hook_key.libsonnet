{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_hook_key",
          type:: "resource",
          attributes:: ["created", "id", "is_used", "key_id", "last_updated", "name"],
        },
      },
    }
    + block.withName(name)
  ),

  "#withName":: "Display name for the key.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
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
