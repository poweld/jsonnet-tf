{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_api_token",
          type:: "resource",
          attributes:: ["client_name", "created", "id", "name", "user_id"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withClientName":: "The name of the API token client",
  withClientName(value):: (
    assert std.isString(value) : '"client_name" expected to be of type "string"';

    {
      client_name: value,
    }
  ),

  "#withCreated":: "Timestamp when the API token was created.",
  withCreated(value):: (
    assert std.isString(value) : '"created" expected to be of type "string"';

    {
      created: value,
    }
  ),

  "#withId":: "The ID of the API token.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "The name of the API token.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withUserId":: "The userId of the user who created the API Token.",
  withUserId(value):: (
    assert std.isString(value) : '"user_id" expected to be of type "string"';

    {
      user_id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  network:: {
    local block = self,

    new():: (
      {}
    ),

    "#withConnection":: "The connection type of the Network Condition.",
    withConnection(value):: (
      assert std.isString(value) : '"connection" expected to be of type "string"';

      {
        connection: value,
      }
    ),

    "#withExclude":: "The IP address the excluded zone.",
    withExclude(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclude" expected to be of type "list"';

      {
        exclude: converted,
      }
    ),

    "#withExcludeMixin":: "The IP address the excluded zone.",
    withExcludeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclude" expected to be of type "list"';

      {
        exclude+: converted,
      }
    ),

    "#withInclude":: "The IP address the included zone.",
    withInclude(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"include" expected to be of type "list"';

      {
        include: converted,
      }
    ),

    "#withIncludeMixin":: "The IP address the included zone.",
    withIncludeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"include" expected to be of type "list"';

      {
        include+: converted,
      }
    ),
  },
  withNetwork(value):: (
    {
      network: value,
    }
  ),
}
