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
    + block.withTerraformName(terraformName)
  ),
  "#withCompoundSearchOperator":: "Search operator used when joining multiple search clauses",
  withCompoundSearchOperator(value):: (
    local converted = value;
    assert std.isString(converted) : '"compound_search_operator" expected to be of type "string"';
    {
      compound_search_operator: converted,
    }
  ),
  "#withDelayReadSeconds":: "Force delay of the users read by N seconds. Useful when eventual consistency of users information needs to be allowed for.",
  withDelayReadSeconds(value):: (
    local converted = value;
    assert std.isString(converted) : '"delay_read_seconds" expected to be of type "string"';
    {
      delay_read_seconds: converted,
    }
  ),
  "#withGroupId":: "Find users based on group membership using the id of the group.",
  withGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIncludeGroups":: "Fetch group memberships for each user",
  withIncludeGroups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_groups" expected to be of type "bool"';
    {
      include_groups: converted,
    }
  ),
  "#withIncludeRoles":: "Fetch user roles for each user",
  withIncludeRoles(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_roles" expected to be of type "bool"';
    {
      include_roles: converted,
    }
  ),
  search:: {
    local block = self,
    new():: (
      {}
    ),
    withComparison(value):: (
      local converted = value;
      assert std.isString(converted) : '"comparison" expected to be of type "string"';
      {
        comparison: converted,
      }
    ),
    "#withExpression":: "A raw search expression string. This requires the search feature be on. Please see Okta documentation on their filter API for users. https://developer.okta.com/docs/api/resources/users#list-users-with-search",
    withExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    "#withName":: "Property name to search for. This requires the search feature be on. Please see Okta documentation on their filter API for users. https://developer.okta.com/docs/api/resources/users#list-users-with-search",
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
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
  withSearch(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      search: value,
    }
  ),
  withSearchMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      search+: converted,
    }
  ),
}
