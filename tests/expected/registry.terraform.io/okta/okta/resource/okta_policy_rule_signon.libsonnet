{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_policy_rule_signon",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "access", "authtype", "behaviors", "id", "identity_provider", "identity_provider_ids", "mfa_lifetime", "mfa_prompt", "mfa_remember_device", "mfa_required", "network_connection", "network_excludes", "network_includes", "policy_id", "primary_factor", "priority", "risc_level", "risk_level", "session_idle", "session_lifetime", "session_persistent", "status", "users_excluded"],
      },
    }
    + block.withName(name)
  ),
  "#withAccess":: "Allow or deny access based on the rule conditions: `ALLOW`, `DENY` or `CHALLENGE`. Default: `ALLOW`",
  withAccess(value):: (
    local converted = value;
    assert std.isString(converted) : '"access" expected to be of type "string"';
    {
      access: converted,
    }
  ),
  "#withAuthtype":: "Authentication entrypoint: `ANY`, `RADIUS` or `LDAP_INTERFACE`. Default: `ANY`",
  withAuthtype(value):: (
    local converted = value;
    assert std.isString(converted) : '"authtype" expected to be of type "string"';
    {
      authtype: converted,
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
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIdentityProvider":: "Apply rule based on the IdP used: `ANY`, `OKTA` or `SPECIFIC_IDP`. Default: `ANY`. ~> **WARNING**: Use of `identity_provider` requires a feature flag to be enabled.",
  withIdentityProvider(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_provider" expected to be of type "string"';
    {
      identity_provider: converted,
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
    local converted = value;
    assert std.isNumber(converted) : '"mfa_lifetime" expected to be of type "number"';
    {
      mfa_lifetime: converted,
    }
  ),
  "#withMfaPrompt":: "Prompt for MFA based on the device used, a factor session lifetime, or every sign-on attempt: `DEVICE`, `SESSION` or`ALWAYS`.",
  withMfaPrompt(value):: (
    local converted = value;
    assert std.isString(converted) : '"mfa_prompt" expected to be of type "string"';
    {
      mfa_prompt: converted,
    }
  ),
  "#withMfaRememberDevice":: "Remember MFA device. Default: `false`",
  withMfaRememberDevice(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"mfa_remember_device" expected to be of type "bool"';
    {
      mfa_remember_device: converted,
    }
  ),
  "#withMfaRequired":: "Require MFA. Default: `false`",
  withMfaRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"mfa_required" expected to be of type "bool"';
    {
      mfa_required: converted,
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
  "#withPrimaryFactor":: "Rule's primary factor. **WARNING** Ony works as a part of the Identity Engine. Valid values: `PASSWORD_IDP_ANY_FACTOR`, `PASSWORD_IDP`.",
  withPrimaryFactor(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_factor" expected to be of type "string"';
    {
      primary_factor: converted,
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
  "#withRiscLevel":: "Risc level: ANY, LOW, MEDIUM or HIGH. Default: `ANY`",
  withRiscLevel(value):: (
    local converted = value;
    assert std.isString(converted) : '"risc_level" expected to be of type "string"';
    {
      risc_level: converted,
    }
  ),
  "#withRiskLevel":: "Risk level: ANY, LOW, MEDIUM or HIGH. Default: `ANY`",
  withRiskLevel(value):: (
    local converted = value;
    assert std.isString(converted) : '"risk_level" expected to be of type "string"';
    {
      risk_level: converted,
    }
  ),
  "#withSessionIdle":: "Max minutes a session can be idle. Default: `120`",
  withSessionIdle(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"session_idle" expected to be of type "number"';
    {
      session_idle: converted,
    }
  ),
  "#withSessionLifetime":: "Max minutes a session is active: Disable = 0. Default: `120`",
  withSessionLifetime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"session_lifetime" expected to be of type "number"';
    {
      session_lifetime: converted,
    }
  ),
  "#withSessionPersistent":: "Whether session cookies will last across browser sessions. Okta Administrators can never have persistent session cookies. Default: `false`",
  withSessionPersistent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"session_persistent" expected to be of type "bool"';
    {
      session_persistent: converted,
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
  factor_sequence:: {
    local block = self,
    new(name, primary_criteria_factor_type, primary_criteria_provider):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_policy_rule_signon",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["primary_criteria_factor_type", "primary_criteria_provider"],
        },
      }
      + block.withPrimaryCriteriaFactorType(primary_criteria_factor_type)
      + block.withPrimaryCriteriaProvider(primary_criteria_provider)
    ),
    "#withPrimaryCriteriaFactorType":: "Type of a Factor",
    withPrimaryCriteriaFactorType(value):: (
      local converted = value;
      assert std.isString(converted) : '"primary_criteria_factor_type" expected to be of type "string"';
      {
        primary_criteria_factor_type: converted,
      }
    ),
    "#withPrimaryCriteriaProvider":: "Factor provider",
    withPrimaryCriteriaProvider(value):: (
      local converted = value;
      assert std.isString(converted) : '"primary_criteria_provider" expected to be of type "string"';
      {
        primary_criteria_provider: converted,
      }
    ),
    secondary_criteria:: {
      local block = self,
      new(name, factor_type, provider):: (
        {
          jsonnetTfMetadata:: {
            terraformObject:: "okta_policy_rule_signon",
            terraformType:: "resource",
            terraformPrefix:: "",
            terraformName:: name,
            terraformAttributes:: ["factor_type", "provider"],
          },
        }
        + block.withFactorType(factor_type)
        + block.withProvider(provider)
      ),
      "#withFactorType":: "Type of a Factor",
      withFactorType(value):: (
        local converted = value;
        assert std.isString(converted) : '"factor_type" expected to be of type "string"';
        {
          factor_type: converted,
        }
      ),
      "#withProvider":: "Factor provider",
      withProvider(value):: (
        local converted = value;
        assert std.isString(converted) : '"provider" expected to be of type "string"';
        {
          provider: converted,
        }
      ),
    },
    withSecondaryCriteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secondary_criteria: value,
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
      factor_sequence: value,
    }
  ),
  withFactorSequenceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      factor_sequence+: converted,
    }
  ),
}
