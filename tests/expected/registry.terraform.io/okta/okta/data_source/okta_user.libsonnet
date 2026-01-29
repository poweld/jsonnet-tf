{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_user",
          type:: "data",
          attributes:: ["admin_roles", "city", "compound_search_operator", "cost_center", "country_code", "custom_profile_attributes", "delay_read_seconds", "department", "display_name", "division", "email", "employee_number", "first_name", "group_memberships", "honorific_prefix", "honorific_suffix", "id", "last_name", "locale", "login", "manager", "manager_id", "middle_name", "mobile_phone", "nick_name", "organization", "postal_address", "preferred_language", "primary_phone", "profile_url", "roles", "second_email", "skip_groups", "skip_roles", "state", "status", "street_address", "timezone", "title", "user_id", "user_type", "zip_code"],
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

  "#withDelayReadSeconds":: "Force delay of the user read by N seconds. Useful when eventual consistency of user information needs to be allowed for.",
  withDelayReadSeconds(value):: (
    assert std.isString(value) : '"delay_read_seconds" expected to be of type "string"';

    {
      delay_read_seconds: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withSkipGroups":: "Do not populate user groups information (prevents additional API call)",
  withSkipGroups(value):: (
    assert std.isBoolean(value) : '"skip_groups" expected to be of type "bool"';

    {
      skip_groups: value,
    }
  ),

  "#withSkipRoles":: "Do not populate user roles information (prevents additional API call)",
  withSkipRoles(value):: (
    assert std.isBoolean(value) : '"skip_roles" expected to be of type "bool"';

    {
      skip_roles: value,
    }
  ),

  "#withUserId":: "Retrieve a single user based on their id",
  withUserId(value):: (
    assert std.isString(value) : '"user_id" expected to be of type "string"';

    {
      user_id: value,
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
