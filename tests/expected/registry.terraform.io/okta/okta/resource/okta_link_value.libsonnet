{
  local block = self,

  new(terraformName, primaryName, primaryUserId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_link_value",
          type:: "resource",
          attributes:: ["associated_user_ids", "id", "primary_name", "primary_user_id"],
        },
      },
    }
    + block.withPrimaryName(primaryName)
    + block.withPrimaryUserId(primaryUserId)
  ),

  "#withAssociatedUserIds":: "Set of User IDs or login values of the users to be assigned the `associated` relationship.",
  withAssociatedUserIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"associated_user_ids" expected to be of type "set"';

    {
      associated_user_ids: converted,
    }
  ),

  "#withAssociatedUserIdsMixin":: "Set of User IDs or login values of the users to be assigned the `associated` relationship.",
  withAssociatedUserIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"associated_user_ids" expected to be of type "set"';

    {
      associated_user_ids+: converted,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withPrimaryName":: "Name of the `primary` relationship being assigned.",
  withPrimaryName(value):: (
    assert std.isString(value) : '"primary_name" expected to be of type "string"';

    {
      primary_name: value,
    }
  ),

  "#withPrimaryUserId":: "User ID to be assigned to `primary` for the 'associated' user in the specified relationship.",
  withPrimaryUserId(value):: (
    assert std.isString(value) : '"primary_user_id" expected to be of type "string"';

    {
      primary_user_id: value,
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
