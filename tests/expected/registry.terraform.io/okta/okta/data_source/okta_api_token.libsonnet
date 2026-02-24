{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_api_token",
          type:: "data",
          attributes:: ["client_name", "created", "id", "name", "user_id"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The ID of the API token.",
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

  network:: {
    local block = self,

    new():: (
      {}
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
