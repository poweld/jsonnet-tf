{
  local block = self,
  new(name, type, version):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_inline_hook",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "auth", "channel", "channel_json", "id", "status", "type", "version"],
      },
    }
    + block.withName(name)
    + block.withType(type)
    + block.withVersion(version)
  ),
  withAuth(value):: (
    local converted = value;
    assert std.isObject(converted) : '"auth" expected to be of type "map"';
    {
      auth: converted,
    }
  ),
  withChannel(value):: (
    local converted = value;
    assert std.isObject(converted) : '"channel" expected to be of type "map"';
    {
      channel: converted,
    }
  ),
  "#withChannelJson":: "true channel object for the inline hook API contract",
  withChannelJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"channel_json" expected to be of type "string"';
    {
      channel_json: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The inline hook display name.",
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
  "#withType":: "The type of hook to create. [See here for supported types](https://developer.okta.com/docs/reference/api/inline-hooks/#supported-inline-hook-types).",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withVersion":: "The version of the hook. The currently-supported version is `1.0.0`.",
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  headers:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_inline_hook",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["key", "value"],
        },
      }
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
