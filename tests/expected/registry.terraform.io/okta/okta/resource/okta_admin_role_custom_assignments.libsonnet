{
  local block = self,
  new(terraformName, customRoleId, resourceSetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_admin_role_custom_assignments",
          type:: "resource",
          attributes:: ["custom_role_id", "id", "members", "resource_set_id"],
        },
      },
    }
    + block.withCustomRoleId(customRoleId)
    + block.withResourceSetId(resourceSetId)
  ),
  "#withCustomRoleId":: "ID of the Custom Role",
  withCustomRoleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_role_id" expected to be of type "string"';
    {
      custom_role_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withMembers":: "The hrefs that point to User(s) and/or Group(s) that receive the Role",
  withMembers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"members" expected to be of type "set"';
    {
      members: converted,
    }
  ),
  "#withMembersMixin":: "The hrefs that point to User(s) and/or Group(s) that receive the Role",
  withMembersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"members" expected to be of type "set"';
    {
      members+: converted,
    }
  ),
  "#withResourceSetId":: "ID of the target Resource Set",
  withResourceSetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set_id" expected to be of type "string"';
    {
      resource_set_id: converted,
    }
  ),
}
