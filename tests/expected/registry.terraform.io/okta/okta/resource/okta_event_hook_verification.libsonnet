{
  local block = self,

  new(terraformName, eventHookId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_event_hook_verification",
          type:: "resource",
          attributes:: ["event_hook_id", "id"],
        },
      },
    }
    + block.withEventHookId(eventHookId)
  ),

  "#withEventHookId":: "Event hook ID",
  withEventHookId(value):: (
    assert std.isString(value) : '"event_hook_id" expected to be of type "string"';

    {
      event_hook_id: value,
    }
  ),

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
