{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_rule_signon",
          type:: "resource",
          attributes:: ["access", "authtype", "behaviors", "id", "identity_provider", "identity_provider_ids", "mfa_lifetime", "mfa_prompt", "mfa_remember_device", "mfa_required", "name", "network_connection", "network_excludes", "network_includes", "policy_id", "primary_factor", "priority", "risc_level", "risk_level", "session_idle", "session_lifetime", "session_persistent", "status", "users_excluded"],
        },
      },
    }
    + block.withName(name)
  ),

  "#withAccess":: "Allow or deny access based on the rule conditions: `ALLOW`, `DENY` or `CHALLENGE`. Default: `ALLOW`",
  withAccess(value):: (
    assert std.isString(value) : '"access" expected to be of type "string"';

    {
      access: value,
    }
  ),

  "#withAuthtype":: "Authentication entrypoint: `ANY`, `RADIUS` or `LDAP_INTERFACE`. Default: `ANY`",
  withAuthtype(value):: (
    assert std.isString(value) : '"authtype" expected to be of type "string"';

    {
      authtype: value,
    }
  ),

  "#withBehaviors":: "List of behavior IDs",
  withBehaviors(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"behaviors" expected to be of type "set"';

    {
      behaviors: converted,
    }
  ),

  "#withBehaviorsMixin":: "List of behavior IDs",
  withBehaviorsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"behaviors" expected to be of type "set"';

    {
      behaviors+: converted,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withIdentityProvider":: "Apply rule based on the IdP used: `ANY`, `OKTA` or `SPECIFIC_IDP`. Default: `ANY`. ~> **WARNING**: Use of `identity_provider` requires a feature flag to be enabled.",
  withIdentityProvider(value):: (
    assert std.isString(value) : '"identity_provider" expected to be of type "string"';

    {
      identity_provider: value,
    }
  ),

  "#withIdentityProviderIds":: "When identity_provider is `SPECIFIC_IDP` then this is the list of IdP IDs to apply the rule on",
  withIdentityProviderIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity_provider_ids" expected to be of type "list"';

    {
      identity_provider_ids: converted,
    }
  ),

  "#withIdentityProviderIdsMixin":: "When identity_provider is `SPECIFIC_IDP` then this is the list of IdP IDs to apply the rule on",
  withIdentityProviderIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity_provider_ids" expected to be of type "list"';

    {
      identity_provider_ids+: converted,
    }
  ),

  "#withMfaLifetime":: "Elapsed time before the next MFA challenge",
  withMfaLifetime(value):: (
    assert std.isNumber(value) : '"mfa_lifetime" expected to be of type "number"';

    {
      mfa_lifetime: value,
    }
  ),

  "#withMfaPrompt":: "Prompt for MFA based on the device used, a factor session lifetime, or every sign-on attempt: `DEVICE`, `SESSION` or`ALWAYS`.",
  withMfaPrompt(value):: (
    assert std.isString(value) : '"mfa_prompt" expected to be of type "string"';

    {
      mfa_prompt: value,
    }
  ),

  "#withMfaRememberDevice":: "Remember MFA device. Default: `false`",
  withMfaRememberDevice(value):: (
    assert std.isBoolean(value) : '"mfa_remember_device" expected to be of type "bool"';

    {
      mfa_remember_device: value,
    }
  ),

  "#withMfaRequired":: "Require MFA. Default: `false`",
  withMfaRequired(value):: (
    assert std.isBoolean(value) : '"mfa_required" expected to be of type "bool"';

    {
      mfa_required: value,
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

  "#withPrimaryFactor":: "Rule's primary factor. **WARNING** Ony works as a part of the Identity Engine. Valid values: `PASSWORD_IDP_ANY_FACTOR`, `PASSWORD_IDP`.",
  withPrimaryFactor(value):: (
    assert std.isString(value) : '"primary_factor" expected to be of type "string"';

    {
      primary_factor: value,
    }
  ),

  "#withPriority":: "Rule priority. This attribute can be set to a valid priority. To avoid an endless diff situation an error is thrown if an invalid property is provided. The Okta API defaults to the last (lowest) if not provided.",
  withPriority(value):: (
    assert std.isNumber(value) : '"priority" expected to be of type "number"';

    {
      priority: value,
    }
  ),

  "#withRiscLevel":: "Risc level: ANY, LOW, MEDIUM or HIGH. Default: `ANY`",
  withRiscLevel(value):: (
    assert std.isString(value) : '"risc_level" expected to be of type "string"';

    {
      risc_level: value,
    }
  ),

  "#withRiskLevel":: "Risk level: ANY, LOW, MEDIUM or HIGH. Default: `ANY`",
  withRiskLevel(value):: (
    assert std.isString(value) : '"risk_level" expected to be of type "string"';

    {
      risk_level: value,
    }
  ),

  "#withSessionIdle":: "Max minutes a session can be idle. Default: `120`",
  withSessionIdle(value):: (
    assert std.isNumber(value) : '"session_idle" expected to be of type "number"';

    {
      session_idle: value,
    }
  ),

  "#withSessionLifetime":: "Max minutes a session is active: Disable = 0. Default: `120`",
  withSessionLifetime(value):: (
    assert std.isNumber(value) : '"session_lifetime" expected to be of type "number"';

    {
      session_lifetime: value,
    }
  ),

  "#withSessionPersistent":: "Whether session cookies will last across browser sessions. Okta Administrators can never have persistent session cookies. Default: `false`",
  withSessionPersistent(value):: (
    assert std.isBoolean(value) : '"session_persistent" expected to be of type "bool"';

    {
      session_persistent: value,
    }
  ),

  "#withStatus":: "Policy Rule Status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withUsersExcluded":: "Set of User IDs to Exclude",
  withUsersExcluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';

    {
      users_excluded: converted,
    }
  ),

  "#withUsersExcludedMixin":: "Set of User IDs to Exclude",
  withUsersExcludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';

    {
      users_excluded+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  factorSequence:: {
    local block = self,

    new(primaryCriteriaFactorType, primaryCriteriaProvider):: (
      {}
      + block.withPrimaryCriteriaFactorType(primaryCriteriaFactorType)
      + block.withPrimaryCriteriaProvider(primaryCriteriaProvider)
    ),

    "#withPrimaryCriteriaFactorType":: "Type of a Factor",
    withPrimaryCriteriaFactorType(value):: (
      assert std.isString(value) : '"primary_criteria_factor_type" expected to be of type "string"';

      {
        primary_criteria_factor_type: value,
      }
    ),

    "#withPrimaryCriteriaProvider":: "Factor provider",
    withPrimaryCriteriaProvider(value):: (
      assert std.isString(value) : '"primary_criteria_provider" expected to be of type "string"';

      {
        primary_criteria_provider: value,
      }
    ),

    secondaryCriteria:: {
      local block = self,

      new(factorType, provider):: (
        {}
        + block.withFactorType(factorType)
        + block.withProvider(provider)
      ),

      "#withFactorType":: "Type of a Factor",
      withFactorType(value):: (
        assert std.isString(value) : '"factor_type" expected to be of type "string"';

        {
          factor_type: value,
        }
      ),

      "#withProvider":: "Factor provider",
      withProvider(value):: (
        assert std.isString(value) : '"provider" expected to be of type "string"';

        {
          provider: value,
        }
      ),
    },
    withSecondaryCriteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secondary_criteria: converted,
      }
    ),
    withSecondaryCriteriaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secondary_criteria+: converted,
      }
    ),
  },
  withFactorSequence(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      factor_sequence: converted,
    }
  ),
  withFactorSequenceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      factor_sequence+: converted,
    }
  ),
}
