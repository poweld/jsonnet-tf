{
  local block = self,

  new(terraformName, action, baseUrl, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_connection",
          type:: "resource",
          attributes:: ["action", "base_url", "id", "status"],
        },
      },
    }
    + block.withAction(action)
    + block.withBaseUrl(baseUrl)
    + block.withId(id)
  ),

  "#withAction":: "The action to perform on the connection. Valid values are `activate` or `deactivate`.",
  withAction(value):: (
    assert std.isString(value) : '"action" expected to be of type "string"';

    {
      action: value,
    }
  ),

  "#withBaseUrl":: "The base URL for the provisioning connection.",
  withBaseUrl(value):: (
    assert std.isString(value) : '"base_url" expected to be of type "string"';

    {
      base_url: value,
    }
  ),

  "#withId":: "The application ID.",
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

  profile:: {
    local block = self,

    new(authScheme):: (
      {}
      + block.withAuthScheme(authScheme)
    ),

    "#withAuthScheme":: "Authentication scheme. Valid values are TOKEN or OAUTH2.",
    withAuthScheme(value):: (
      assert std.isString(value) : '"auth_scheme" expected to be of type "string"';

      {
        auth_scheme: value,
      }
    ),

    "#withClientId":: "OAuth2 client ID (required for OAUTH2 auth scheme).",
    withClientId(value):: (
      assert std.isString(value) : '"client_id" expected to be of type "string"';

      {
        client_id: value,
      }
    ),

    "#withToken":: "Authentication token (required for TOKEN auth scheme).",
    withToken(value):: (
      assert std.isString(value) : '"token" expected to be of type "string"';

      {
        token: value,
      }
    ),

    settings:: {
      local block = self,

      new():: (
        {}
      ),

      "#withAdminPassword":: "Admin password for OAuth2.",
      withAdminPassword(value):: (
        assert std.isString(value) : '"admin_password" expected to be of type "string"';

        {
          admin_password: value,
        }
      ),

      "#withAdminUsername":: "Admin username for OAuth2.",
      withAdminUsername(value):: (
        assert std.isString(value) : '"admin_username" expected to be of type "string"';

        {
          admin_username: value,
        }
      ),
    },
    signing:: {
      local block = self,

      new():: (
        {}
      ),

      "#withRotationMode":: "Token rotation mode.",
      withRotationMode(value):: (
        assert std.isString(value) : '"rotation_mode" expected to be of type "string"';

        {
          rotation_mode: value,
        }
      ),
    },
    withSettings(value):: (
      {
        settings: value,
      }
    ),
    withSigning(value):: (
      {
        signing: value,
      }
    ),
  },
  withProfile(value):: (
    {
      profile: value,
    }
  ),
}
