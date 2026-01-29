{
  local block = self,

  new(terraformName, authorize, login):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_rate_limiting",
          type:: "resource",
          attributes:: ["authorize", "communications_enabled", "id", "login"],
        },
      },
    }
    + block.withAuthorize(authorize)
    + block.withLogin(login)
  ),

  "#withAuthorize":: "Called during authentication. Valid values: `ENFORCE` _(Enforce limit and log per client (recommended))_, `DISABLE` _(Do nothing (not recommended))_, `PREVIEW` _(Log per client)_.",
  withAuthorize(value):: (
    assert std.isString(value) : '"authorize" expected to be of type "string"';

    {
      authorize: value,
    }
  ),

  "#withCommunicationsEnabled":: "Enable or disable rate limiting communications. By default, it is `true`.",
  withCommunicationsEnabled(value):: (
    assert std.isBoolean(value) : '"communications_enabled" expected to be of type "bool"';

    {
      communications_enabled: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withLogin":: "Called when accessing the Okta hosted login page. Valid values: `ENFORCE` _(Enforce limit and log per client (recommended))_, `DISABLE` _(Do nothing (not recommended))_, `PREVIEW` _(Log per client)_.",
  withLogin(value):: (
    assert std.isString(value) : '"login" expected to be of type "string"';

    {
      login: value,
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
