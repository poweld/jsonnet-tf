{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_user",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["admin_roles", "city", "compound_search_operator", "cost_center", "country_code", "custom_profile_attributes", "delay_read_seconds", "department", "display_name", "division", "email", "employee_number", "first_name", "group_memberships", "honorific_prefix", "honorific_suffix", "id", "last_name", "locale", "login", "manager", "manager_id", "middle_name", "mobile_phone", "nick_name", "organization", "postal_address", "preferred_language", "primary_phone", "profile_url", "roles", "second_email", "skip_groups", "skip_roles", "state", "status", "street_address", "timezone", "title", "user_id", "user_type", "zip_code"],
      },
    }
  ),
  "#withCompoundSearchOperator":: "Search operator used when joining multiple search clauses",
  withCompoundSearchOperator(value):: (
    local converted = value;
    assert std.isString(converted) : '"compound_search_operator" expected to be of type "string"';
    {
      compound_search_operator: converted,
    }
  ),
  "#withDelayReadSeconds":: "Force delay of the user read by N seconds. Useful when eventual consistency of user information needs to be allowed for.",
  withDelayReadSeconds(value):: (
    local converted = value;
    assert std.isString(converted) : '"delay_read_seconds" expected to be of type "string"';
    {
      delay_read_seconds: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withSkipGroups":: "Do not populate user groups information (prevents additional API call)",
  withSkipGroups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_groups" expected to be of type "bool"';
    {
      skip_groups: converted,
    }
  ),
  "#withSkipRoles":: "Do not populate user roles information (prevents additional API call)",
  withSkipRoles(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_roles" expected to be of type "bool"';
    {
      skip_roles: converted,
    }
  ),
  "#withUserId":: "Retrieve a single user based on their id",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  search:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_user",
          terraformType:: "data",
          terraformPrefix:: "data",
          terraformName:: name,
          terraformAttributes:: ["name", "comparison", "expression", "value"],
        },
      }
      + block.withName(name)
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
