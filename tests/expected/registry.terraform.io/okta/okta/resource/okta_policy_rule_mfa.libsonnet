{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_rule_mfa",
          type:: "resource",
          attributes:: ["enroll", "id", "name", "network_connection", "network_excludes", "network_includes", "policy_id", "priority", "status", "users_excluded"],
        },
      },
    }
    + block.withName(name)
  ),

  "#withEnroll":: "When a user should be prompted for MFA. It can be `CHALLENGE`, `LOGIN`, or `NEVER`.",
  withEnroll(value):: (
    assert std.isString(value) : '"enroll" expected to be of type "string"';

    {
      enroll: value,
    }
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
}
