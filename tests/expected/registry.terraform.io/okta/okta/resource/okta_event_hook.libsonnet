{
  local block = self,

  new(terraformName, channel, events, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_event_hook",
          type:: "resource",
          attributes:: ["auth", "channel", "events", "id", "name", "status"],
        },
      },
    }
    + block.withChannel(channel)
    + block.withEvents(events)
    + block.withName(name)
  ),

  "#withAuth":: "Details of the endpoint the event hook will hit.    \t- 'version' - (Required) The version of the channel. The currently-supported version is '1.0.0'. \t- 'uri' - (Required) The URI the hook will hit. \t- 'type' - (Optional) The type of hook to trigger. Currently, the only supported type is 'HTTP'.",
  withAuth(value):: (
    assert std.isObject(value) : '"auth" expected to be of type "map"';

    {
      auth: value,
    }
  ),

  "#withChannel":: "Details of the endpoint the event hook will hit.",
  withChannel(value):: (
    assert std.isObject(value) : '"channel" expected to be of type "map"';

    {
      channel: value,
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
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "The event hook display name.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withStatus":: "Default to `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  headers:: {
    local block = self,

    new():: (
      {}
    ),

    withKey(value):: (
      assert std.isString(value) : '"key" expected to be of type "string"';

      {
        key: value,
      }
    ),

    withValue(value):: (
      assert std.isString(value) : '"value" expected to be of type "string"';

      {
        value: value,
      }
    ),
  },
  withHeaders(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers: converted,
    }
  ),
  withHeadersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers+: converted,
    }
  ),
}
