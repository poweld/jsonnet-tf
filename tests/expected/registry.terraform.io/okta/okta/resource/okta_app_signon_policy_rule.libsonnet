{
  local block = self,
  new(terraformName, name, policyId):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_app_signon_policy_rule",
        type:: "resource",
        attributes:: ["access", "chains", "constraints", "custom_expression", "device_assurances_included", "device_is_managed", "device_is_registered", "factor_mode", "groups_excluded", "groups_included", "id", "inactivity_period", "name", "network_connection", "network_excludes", "network_includes", "policy_id", "priority", "re_authentication_frequency", "risk_score", "status", "system", "type", "user_types_excluded", "user_types_included", "users_excluded", "users_included"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
    + block.withPolicyId(policyId)
  ),
  "#withAccess":: "Allow or deny access based on the rule conditions: ALLOW or DENY",
  withAccess(value):: (
    local converted = value;
    assert std.isString(converted) : '"access" expected to be of type "string"';
    {
      access: converted,
    }
  ),
  "#withChains":: "Use with verification method = `AUTH_METHOD_CHAIN` only",
  withChains(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"chains" expected to be of type "list"';
    {
      chains: converted,
    }
  ),
  "#withChainsMixin":: "Use with verification method = `AUTH_METHOD_CHAIN` only",
  withChainsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"chains" expected to be of type "list"';
    {
      chains+: converted,
    }
  ),
  "#withConstraints":: "An array that contains nested Authenticator Constraint objects that are organized by the Authenticator class",
  withConstraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"constraints" expected to be of type "list"';
    {
      constraints: converted,
    }
  ),
  "#withConstraintsMixin":: "An array that contains nested Authenticator Constraint objects that are organized by the Authenticator class",
  withConstraintsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"constraints" expected to be of type "list"';
    {
      constraints+: converted,
    }
  ),
  "#withCustomExpression":: "This is an optional advanced setting. If the expression is formatted incorrectly or conflicts with conditions set above, the rule may not match any users.",
  withCustomExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_expression" expected to be of type "string"';
    {
      custom_expression: converted,
    }
  ),
  "#withDeviceAssurancesIncluded":: "List of device assurance IDs to include",
  withDeviceAssurancesIncluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"device_assurances_included" expected to be of type "set"';
    {
      device_assurances_included: converted,
    }
  ),
  "#withDeviceAssurancesIncludedMixin":: "List of device assurance IDs to include",
  withDeviceAssurancesIncludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"device_assurances_included" expected to be of type "set"';
    {
      device_assurances_included+: converted,
    }
  ),
  "#withDeviceIsManaged":: "If the device is managed. A device is managed if it's managed by a device management system. When managed is passed, registered must also be included and must be set to true.",
  withDeviceIsManaged(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"device_is_managed" expected to be of type "bool"';
    {
      device_is_managed: converted,
    }
  ),
  "#withDeviceIsRegistered":: "If the device is registered. A device is registered if the User enrolls with Okta Verify that is installed on the device.",
  withDeviceIsRegistered(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"device_is_registered" expected to be of type "bool"';
    {
      device_is_registered: converted,
    }
  ),
  "#withFactorMode":: "The number of factors required to satisfy this assurance level",
  withFactorMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"factor_mode" expected to be of type "string"';
    {
      factor_mode: converted,
    }
  ),
  "#withGroupsExcluded":: "List of group IDs to exclude",
  withGroupsExcluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_excluded" expected to be of type "set"';
    {
      groups_excluded: converted,
    }
  ),
  "#withGroupsExcludedMixin":: "List of group IDs to exclude",
  withGroupsExcludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_excluded" expected to be of type "set"';
    {
      groups_excluded+: converted,
    }
  ),
  "#withGroupsIncluded":: "List of group IDs to include",
  withGroupsIncluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included: converted,
    }
  ),
  "#withGroupsIncludedMixin":: "List of group IDs to include",
  withGroupsIncludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withInactivityPeriod":: "The inactivity duration after which the end user must re-authenticate. Use the ISO 8601 Period format for recurring time intervals.",
  withInactivityPeriod(value):: (
    local converted = value;
    assert std.isString(converted) : '"inactivity_period" expected to be of type "string"';
    {
      inactivity_period: converted,
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
  "#withNetworkConnection":: "Network selection mode: ANYWHERE, ZONE, ON_NETWORK, or OFF_NETWORK.",
  withNetworkConnection(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_connection" expected to be of type "string"';
    {
      network_connection: converted,
    }
  ),
  "#withNetworkExcludes":: "The zones to exclude",
  withNetworkExcludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';
    {
      network_excludes: converted,
    }
  ),
  "#withNetworkExcludesMixin":: "The zones to exclude",
  withNetworkExcludesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';
    {
      network_excludes+: converted,
    }
  ),
  "#withNetworkIncludes":: "The zones to include",
  withNetworkIncludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';
    {
      network_includes: converted,
    }
  ),
  "#withNetworkIncludesMixin":: "The zones to include",
  withNetworkIncludesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';
    {
      network_includes+: converted,
    }
  ),
  "#withPolicyId":: "ID of the policy",
  withPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  "#withPriority":: "Priority of the rule.",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  "#withReAuthenticationFrequency":: "The duration after which the end user must re-authenticate, regardless of user activity. Use the ISO 8601 Period format for recurring time intervals. PT0S - Every sign-in attempt, PT43800H - Once per session",
  withReAuthenticationFrequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"re_authentication_frequency" expected to be of type "string"';
    {
      re_authentication_frequency: converted,
    }
  ),
  "#withRiskScore":: "The risk score specifies a particular level of risk to match on: ANY, LOW, MEDIUM, HIGH",
  withRiskScore(value):: (
    local converted = value;
    assert std.isString(converted) : '"risk_score" expected to be of type "string"';
    {
      risk_score: converted,
    }
  ),
  "#withStatus":: "Status of the rule",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withType":: "The Verification Method type",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withUserTypesExcluded":: "Set of User Type IDs to exclude",
  withUserTypesExcluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_types_excluded" expected to be of type "set"';
    {
      user_types_excluded: converted,
    }
  ),
  "#withUserTypesExcludedMixin":: "Set of User Type IDs to exclude",
  withUserTypesExcludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_types_excluded" expected to be of type "set"';
    {
      user_types_excluded+: converted,
    }
  ),
  "#withUserTypesIncluded":: "Set of User Type IDs to include",
  withUserTypesIncluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_types_included" expected to be of type "set"';
    {
      user_types_included: converted,
    }
  ),
  "#withUserTypesIncludedMixin":: "Set of User Type IDs to include",
  withUserTypesIncludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_types_included" expected to be of type "set"';
    {
      user_types_included+: converted,
    }
  ),
  "#withUsersExcluded":: "Set of User IDs to exclude",
  withUsersExcluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded: converted,
    }
  ),
  "#withUsersExcludedMixin":: "Set of User IDs to exclude",
  withUsersExcludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded+: converted,
    }
  ),
  "#withUsersIncluded":: "Set of User IDs to include",
  withUsersIncluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_included" expected to be of type "set"';
    {
      users_included: converted,
    }
  ),
  "#withUsersIncludedMixin":: "Set of User IDs to include",
  withUsersIncludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_included" expected to be of type "set"';
    {
      users_included+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
  platform_include:: {
    local block = self,
    new():: (
      {}
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
  withPlatformInclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      platform_include: value,
    }
  ),
  withPlatformIncludeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      platform_include+: converted,
    }
  ),
}
