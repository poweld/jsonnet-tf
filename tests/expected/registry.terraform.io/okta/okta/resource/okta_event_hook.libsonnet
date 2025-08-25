{
  local block = self,
  new(terraformName, channel, events, name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_event_hook",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["auth", "channel", "events", "id", "name", "status"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withChannel(channel)
    + block.withEvents(events)
    + block.withName(name)
  ),
  "#withAuth":: "Details of the endpoint the event hook will hit.    \t- 'version' - (Required) The version of the channel. The currently-supported version is '1.0.0'. \t- 'uri' - (Required) The URI the hook will hit. \t- 'type' - (Optional) The type of hook to trigger. Currently, the only supported type is 'HTTP'.",
  withAuth(value):: (
    local converted = value;
    assert std.isObject(converted) : '"auth" expected to be of type "map"';
    {
      auth: converted,
    }
  ),
  "#withChannel":: "Details of the endpoint the event hook will hit.",
  withChannel(value):: (
    local converted = value;
    assert std.isObject(converted) : '"channel" expected to be of type "map"';
    {
      channel: converted,
    }
  ),
  "#withEvents":: "The events that will be delivered to this hook. [See here for a list of supported events](https://developer.okta.com/docs/reference/api/event-types/?q=event-hook-eligible).",
  withEvents(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
    {
      events: converted,
    }
  ),
  "#withEventsMixin":: "The events that will be delivered to this hook. [See here for a list of supported events](https://developer.okta.com/docs/reference/api/event-types/?q=event-hook-eligible).",
  withEventsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
    {
      events+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The event hook display name.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withStatus":: "Default to `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
  headers:: {
    local block = self,
    new():: (
      {}
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withHeaders(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers: value,
    }
  ),
  withHeadersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers+: converted,
    }
  ),
}
