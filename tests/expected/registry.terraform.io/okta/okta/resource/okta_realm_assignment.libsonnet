{
  local block = self,

  new(terraformName, name, profileSourceId, realmId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_realm_assignment",
          type:: "resource",
          attributes:: ["condition_expression", "id", "is_default", "name", "priority", "profile_source_id", "realm_id", "status"],
        },
      },
    }
    + block.withName(name)
    + block.withProfileSourceId(profileSourceId)
    + block.withRealmId(realmId)
  ),

  "#withConditionExpression":: "Condition expression for the Realm Assignment in Okta Expression Language. Example: `user.profile.role =='Manager'` or `user.profile.state.contains('example')`.",
  withConditionExpression(value):: (
    assert std.isString(value) : '"condition_expression" expected to be of type "string"';

    {
      condition_expression: value,
    }
  ),

  "#withName":: "The name of the Okta Realm Assignment.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withPriority":: "The Priority of the Realm Assignment. The lower the number, the higher the priority.",
  withPriority(value):: (
    assert std.isNumber(value) : '"priority" expected to be of type "number"';

    {
      priority: value,
    }
  ),

  "#withProfileSourceId":: "The ID of the Profile Source.",
  withProfileSourceId(value):: (
    assert std.isString(value) : '"profile_source_id" expected to be of type "string"';

    {
      profile_source_id: value,
    }
  ),

  "#withRealmId":: "The ID of the Realm asscociated with the Realm Assignment.",
  withRealmId(value):: (
    assert std.isString(value) : '"realm_id" expected to be of type "string"';

    {
      realm_id: value,
    }
  ),

  "#withStatus":: "Defines whether the Realm Assignment is active or not. Valid values: `ACTIVE` and `INACTIVE`.",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
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
