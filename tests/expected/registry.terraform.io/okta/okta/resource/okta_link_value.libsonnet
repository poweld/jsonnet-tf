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
    + block.withTerraformName(terraformName)
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
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPrimaryName":: "Name of the `primary` relationship being assigned.",
  withPrimaryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_name" expected to be of type "string"';
    {
      primary_name: converted,
    }
  ),
  "#withPrimaryUserId":: "User ID to be assigned to `primary` for the 'associated' user in the specified relationship.",
  withPrimaryUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_user_id" expected to be of type "string"';
    {
      primary_user_id: converted,
    }
  ),
}
