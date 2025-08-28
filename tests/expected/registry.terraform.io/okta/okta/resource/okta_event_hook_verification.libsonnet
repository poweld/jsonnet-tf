{
  local block = self,
  new(terraformName, eventHookId):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_event_hook_verification",
        type:: "resource",
        attributes:: ["event_hook_id", "id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withEventHookId(eventHookId)
  ),
  "#withEventHookId":: "Event hook ID",
  withEventHookId(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_hook_id" expected to be of type "string"';
    {
      event_hook_id: converted,
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
      terraformName:: value,
    },
  },
}
