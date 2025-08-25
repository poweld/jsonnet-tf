{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_policy_rule_idp_discovery",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "id", "network_connection", "network_excludes", "network_includes", "policy_id", "priority", "status", "user_identifier_attribute", "user_identifier_type"],
      },
    }
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Policy Rule Name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withNetworkConnection":: "Network selection mode: `ANYWHERE`, `ZONE`, `ON_NETWORK`, or `OFF_NETWORK`. Default: `ANYWHERE`",
  withNetworkConnection(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_connection" expected to be of type "string"';
    {
      network_connection: converted,
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
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  "#withPriority":: "Rule priority. This attribute can be set to a valid priority. To avoid an endless diff situation an error is thrown if an invalid property is provided. The Okta API defaults to the last (lowest) if not provided.",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  "#withStatus":: "Policy Rule Status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withUserIdentifierAttribute":: "Profile attribute matching can only have a single value that describes the type indicated in `user_identifier_type`. This is the attribute or identifier that the `user_identifier_patterns` are checked against.",
  withUserIdentifierAttribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_identifier_attribute" expected to be of type "string"';
    {
      user_identifier_attribute: converted,
    }
  ),
  "#withUserIdentifierType":: "One of: `IDENTIFIER`, `ATTRIBUTE`",
  withUserIdentifierType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_identifier_type" expected to be of type "string"';
    {
      user_identifier_type: converted,
    }
  ),
  app_exclude:: {
    local block = self,
    new(name, type):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_policy_rule_idp_discovery",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["name", "id", "type"],
        },
      }
      + block.withName(name)
      + block.withType(type)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  app_include:: {
    local block = self,
    new(name, type):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_policy_rule_idp_discovery",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["name", "id", "type"],
        },
      }
      + block.withName(name)
      + block.withType(type)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  idp_providers:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_policy_rule_idp_discovery",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["id", "type"],
        },
      }
    ),
    "#withId":: "The identifier for the Idp the rule should route to if all conditions are met.",
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    "#withType":: "Type of IdP. One of: `AMAZON`, `APPLE`, `DISCORD`, `FACEBOOK`, `GITHUB`, `GITLAB`, `GOOGLE`, `IDV_CLEAR`, `IDV_INCODE`, `IDV_PERSONA`, `LINKEDIN`, `LOGINGOV`, `LOGINGOV_SANDBOX`, `MICROSOFT`, `OIDC`, `PAYPAL`, `PAYPAL_SANDBOX`, `SALESFORCE`, `SAML2`, `SPOTIFY`, `X509`, `XERO`, `YAHOO`, `YAHOOJP`, Default: `OKTA`",
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  platform_include:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_policy_rule_idp_discovery",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["os_expression", "os_type", "type"],
        },
      }
    ),
    "#withOsExpression":: "Only available with OTHER OS type",
    withOsExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"os_expression" expected to be of type "string"';
      {
        os_expression: converted,
      }
    ),
    withOsType(value):: (
      local converted = value;
      assert std.isString(converted) : '"os_type" expected to be of type "string"';
      {
        os_type: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  user_identifier_patterns:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_policy_rule_idp_discovery",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["match_type", "value"],
        },
      }
    ),
    withMatchType(value):: (
      local converted = value;
      assert std.isString(converted) : '"match_type" expected to be of type "string"';
      {
        match_type: converted,
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
  withAppExclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_exclude: value,
    }
  ),
  withAppInclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_include: value,
    }
  ),
  withIdpProviders(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      idp_providers: value,
    }
  ),
  withPlatformInclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      platform_include: value,
    }
  ),
  withUserIdentifierPatterns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_identifier_patterns: value,
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
