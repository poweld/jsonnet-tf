{
  local block = self,
  new(terraformName, authorize, login):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          object:: "okta_rate_limiting",
          type:: "resource",
          attributes:: ["authorize", "communications_enabled", "id", "login"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAuthorize(authorize)
    + block.withLogin(login)
  ),
  "#withAuthorize":: "Called during authentication. Valid values: `ENFORCE` _(Enforce limit and log per client (recommended))_, `DISABLE` _(Do nothing (not recommended))_, `PREVIEW` _(Log per client)_.",
  withAuthorize(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorize" expected to be of type "string"';
    {
      authorize: converted,
    }
  ),
  "#withCommunicationsEnabled":: "Enable or disable rate limiting communications. By default, it is `true`.",
  withCommunicationsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"communications_enabled" expected to be of type "bool"';
    {
      communications_enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLogin":: "Called when accessing the Okta hosted login page. Valid values: `ENFORCE` _(Enforce limit and log per client (recommended))_, `DISABLE` _(Do nothing (not recommended))_, `PREVIEW` _(Log per client)_.",
  withLogin(value):: (
    local converted = value;
    assert std.isString(converted) : '"login" expected to be of type "string"';
    {
      login: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
