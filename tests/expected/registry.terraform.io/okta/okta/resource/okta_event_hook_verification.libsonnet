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
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}
