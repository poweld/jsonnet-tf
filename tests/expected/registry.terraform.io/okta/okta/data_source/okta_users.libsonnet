{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_users",
          type:: "data",
          attributes:: ["compound_search_operator", "delay_read_seconds", "group_id", "id", "include_groups", "include_roles", "users"],
        },
      },
    }
  ),

  "#withCompoundSearchOperator":: "Search operator used when joining multiple search clauses",
  withCompoundSearchOperator(value):: (
    assert std.isString(value) : '"compound_search_operator" expected to be of type "string"';

    {
      compound_search_operator: value,
    }
  ),

  "#withDelayReadSeconds":: "Force delay of the users read by N seconds. Useful when eventual consistency of users information needs to be allowed for.",
  withDelayReadSeconds(value):: (
    assert std.isString(value) : '"delay_read_seconds" expected to be of type "string"';

    {
      delay_read_seconds: value,
    }
  ),

  "#withGroupId":: "Find users based on group membership using the id of the group.",
  withGroupId(value):: (
    assert std.isString(value) : '"group_id" expected to be of type "string"';

    {
      group_id: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withIncludeGroups":: "Fetch group memberships for each user",
  withIncludeGroups(value):: (
    assert std.isBoolean(value) : '"include_groups" expected to be of type "bool"';

    {
      include_groups: value,
    }
  ),

  "#withIncludeRoles":: "Fetch user roles for each user",
  withIncludeRoles(value):: (
    assert std.isBoolean(value) : '"include_roles" expected to be of type "bool"';

    {
      include_roles: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  search:: {
    local block = self,

    new():: (
      {}
    ),

    withComparison(value):: (
      assert std.isString(value) : '"comparison" expected to be of type "string"';

      {
        comparison: value,
      }
    ),

    "#withExpression":: "A raw search expression string. This requires the search feature be on. Please see Okta documentation on their filter API for users. https://developer.okta.com/docs/api/resources/users#list-users-with-search",
    withExpression(value):: (
      assert std.isString(value) : '"expression" expected to be of type "string"';

      {
        expression: value,
      }
    ),

    "#withName":: "Property name to search for. This requires the search feature be on. Please see Okta documentation on their filter API for users. https://developer.okta.com/docs/api/resources/users#list-users-with-search",
    withName(value):: (
      assert std.isString(value) : '"name" expected to be of type "string"';

      {
        name: value,
      }
    ),

    withValue(value):: (
      assert std.isString(value) : '"value" expected to be of type "string"';

      {
        value: value,
      }
    ),
  },
  withSearch(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      search: converted,
    }
  ),
  withSearchMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      search+: converted,
    }
  ),
}
