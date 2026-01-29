{
  local block = self,

  new(terraformName, groupId, idOfGroupOwner, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_group_owner",
          type:: "resource",
          attributes:: ["display_name", "group_id", "id", "id_of_group_owner", "origin_id", "origin_type", "resolved", "type"],
        },
      },
    }
    + block.withGroupId(groupId)
    + block.withIdOfGroupOwner(idOfGroupOwner)
    + block.withType(type)
  ),

  "#withGroupId":: "The id of the group",
  withGroupId(value):: (
    assert std.isString(value) : '"group_id" expected to be of type "string"';

    {
      group_id: value,
    }
  ),

  "#withIdOfGroupOwner":: "The user id of the group owner",
  withIdOfGroupOwner(value):: (
    assert std.isString(value) : '"id_of_group_owner" expected to be of type "string"';

    {
      id_of_group_owner: value,
    }
  ),

  "#withType":: "The entity type of the owner. Enum: 'GROUP' 'USER'",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
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
