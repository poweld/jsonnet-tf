{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_hook_key",
          type:: "data",
          attributes:: ["created", "id", "is_used", "key_id", "last_updated", "name"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The unique identifier of the Hook Key. Conflicts with name.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
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
