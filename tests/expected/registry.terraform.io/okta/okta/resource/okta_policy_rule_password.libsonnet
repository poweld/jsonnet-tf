{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_rule_password",
          type:: "resource",
          attributes:: ["id", "name", "network_connection", "network_excludes", "network_includes", "password_change", "password_reset", "password_unlock", "policy_id", "priority", "status", "users_excluded"],
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

  "#withPasswordChange":: "Allow or deny a user to change their password: `ALLOW` or `DENY`. Default: `ALLOW`",
  withPasswordChange(value):: (
    assert std.isString(value) : '"password_change" expected to be of type "string"';

    {
      password_change: value,
    }
  ),

  "#withPasswordReset":: "Allow or deny a user to reset their password: `ALLOW` or `DENY`. Default: `ALLOW`",
  withPasswordReset(value):: (
    assert std.isString(value) : '"password_reset" expected to be of type "string"';

    {
      password_reset: value,
    }
  ),

  "#withPasswordUnlock":: "Allow or deny a user to unlock. Default: `DENY`",
  withPasswordUnlock(value):: (
    assert std.isString(value) : '"password_unlock" expected to be of type "string"';

    {
      password_unlock: value,
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
}
