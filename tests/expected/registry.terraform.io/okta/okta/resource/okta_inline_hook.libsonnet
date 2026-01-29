{
  local block = self,

  new(terraformName, name, type, version):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_inline_hook",
          type:: "resource",
          attributes:: ["auth", "channel", "channel_json", "id", "name", "status", "type", "version"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
    + block.withVersion(version)
  ),

  withAuth(value):: (
    assert std.isObject(value) : '"auth" expected to be of type "map"';

    {
      auth: value,
    }
  ),

  withChannel(value):: (
    assert std.isObject(value) : '"channel" expected to be of type "map"';

    {
      channel: value,
    }
  ),

  "#withChannelJson":: "true channel object for the inline hook API contract",
  withChannelJson(value):: (
    assert std.isString(value) : '"channel_json" expected to be of type "string"';

    {
      channel_json: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "The inline hook display name.",
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

  "#withType":: "The type of hook to create. [See here for supported types](https://developer.okta.com/docs/reference/api/inline-hooks/#supported-inline-hook-types).",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
    }
  ),

  "#withVersion":: "The version of the hook. The currently-supported version is `1.0.0`.",
  withVersion(value):: (
    assert std.isString(value) : '"version" expected to be of type "string"';

    {
      version: value,
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
