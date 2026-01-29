{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_rule_idp_discovery",
          type:: "resource",
          attributes:: ["id", "name", "network_connection", "network_excludes", "network_includes", "policy_id", "priority", "status", "user_identifier_attribute", "user_identifier_type"],
        },
      },
    }
    + block.withName(name)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Policy Rule Name",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withNetworkConnection":: "Network selection mode: `ANYWHERE`, `ZONE`, `ON_NETWORK`, or `OFF_NETWORK`. Default: `ANYWHERE`",
  withNetworkConnection(value):: (
    assert std.isString(value) : '"network_connection" expected to be of type "string"';

    {
      network_connection: value,
    }
  ),

  "#withNetworkExcludes":: "Required if `network_connection` = `ZONE`. Indicates the network zones to exclude.",
  withNetworkExcludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';

    {
      network_excludes: converted,
    }
  ),

  "#withNetworkExcludesMixin":: "Required if `network_connection` = `ZONE`. Indicates the network zones to exclude.",
  withNetworkExcludesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';

    {
      network_excludes+: converted,
    }
  ),

  "#withNetworkIncludes":: "Required if `network_connection` = `ZONE`. Indicates the network zones to include.",
  withNetworkIncludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';

    {
      network_includes: converted,
    }
  ),

  "#withNetworkIncludesMixin":: "Required if `network_connection` = `ZONE`. Indicates the network zones to include.",
  withNetworkIncludesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';

    {
      network_includes+: converted,
    }
  ),

  "#withPolicyId":: "Policy ID of the Rule",
  withPolicyId(value):: (
    assert std.isString(value) : '"policy_id" expected to be of type "string"';

    {
      policy_id: value,
    }
  ),

  "#withPriority":: "Rule priority. This attribute can be set to a valid priority. To avoid an endless diff situation an error is thrown if an invalid property is provided. The Okta API defaults to the last (lowest) if not provided.",
  withPriority(value):: (
    assert std.isNumber(value) : '"priority" expected to be of type "number"';

    {
      priority: value,
    }
  ),

  "#withStatus":: "Policy Rule Status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withUserIdentifierAttribute":: "Profile attribute matching can only have a single value that describes the type indicated in `user_identifier_type`. This is the attribute or identifier that the `user_identifier_patterns` are checked against.",
  withUserIdentifierAttribute(value):: (
    assert std.isString(value) : '"user_identifier_attribute" expected to be of type "string"';

    {
      user_identifier_attribute: value,
    }
  ),

  "#withUserIdentifierType":: "One of: `IDENTIFIER`, `ATTRIBUTE`",
  withUserIdentifierType(value):: (
    assert std.isString(value) : '"user_identifier_type" expected to be of type "string"';

    {
      user_identifier_type: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  appExclude:: {
    local block = self,

    new(type):: (
      {}
      + block.withType(type)
    ),

    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    withName(value):: (
      assert std.isString(value) : '"name" expected to be of type "string"';

      {
        name: value,
      }
    ),

    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  appInclude:: {
    local block = self,

    new(type):: (
      {}
      + block.withType(type)
    ),

    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    withName(value):: (
      assert std.isString(value) : '"name" expected to be of type "string"';

      {
        name: value,
      }
    ),

    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  idpProviders:: {
    local block = self,

    new():: (
      {}
    ),

    "#withId":: "The identifier for the Idp the rule should route to if all conditions are met.",
    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    "#withType":: "Type of IdP. One of: `AMAZON`, `APPLE`, `DISCORD`, `FACEBOOK`, `GITHUB`, `GITLAB`, `GOOGLE`, `IDV_CLEAR`, `IDV_INCODE`, `IDV_PERSONA`, `LINKEDIN`, `LOGINGOV`, `LOGINGOV_SANDBOX`, `MICROSOFT`, `OIDC`, `PAYPAL`, `PAYPAL_SANDBOX`, `SALESFORCE`, `SAML2`, `SPOTIFY`, `X509`, `XERO`, `YAHOO`, `YAHOOJP`, Default: `OKTA`",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  platformInclude:: {
    local block = self,

    new():: (
      {}
    ),

    "#withOsExpression":: "Only available with OTHER OS type",
    withOsExpression(value):: (
      assert std.isString(value) : '"os_expression" expected to be of type "string"';

      {
        os_expression: value,
      }
    ),

    withOsType(value):: (
      assert std.isString(value) : '"os_type" expected to be of type "string"';

      {
        os_type: value,
      }
    ),

    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  userIdentifierPatterns:: {
    local block = self,

    new():: (
      {}
    ),

    withMatchType(value):: (
      assert std.isString(value) : '"match_type" expected to be of type "string"';

      {
        match_type: value,
      }
    ),

    withValue(value):: (
      assert std.isString(value) : '"value" expected to be of type "string"';

      {
        value: value,
      }
    ),
  },
  withAppExclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_exclude: converted,
    }
  ),
  withAppInclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_include: converted,
    }
  ),
  withIdpProviders(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      idp_providers: converted,
    }
  ),
  withPlatformInclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      platform_include: converted,
    }
  ),
  withUserIdentifierPatterns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_identifier_patterns: converted,
    }
  ),
  withAppExcludeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_exclude+: converted,
    }
  ),
  withAppIncludeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_include+: converted,
    }
  ),
  withIdpProvidersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      idp_providers+: converted,
    }
  ),
  withPlatformIncludeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      platform_include+: converted,
    }
  ),
  withUserIdentifierPatternsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_identifier_patterns+: converted,
    }
  ),
}
