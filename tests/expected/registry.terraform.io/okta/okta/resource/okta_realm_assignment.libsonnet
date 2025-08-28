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
    local converted = value;
    assert std.isString(converted) : '"condition_expression" expected to be of type "string"';
    {
      condition_expression: converted,
    }
  ),
  "#withName":: "The name of the Okta Realm Assignment.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPriority":: "The Priority of the Realm Assignment. The lower the number, the higher the priority.",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  "#withProfileSourceId":: "The ID of the Profile Source.",
  withProfileSourceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_source_id" expected to be of type "string"';
    {
      profile_source_id: converted,
    }
  ),
  "#withRealmId":: "The ID of the Realm asscociated with the Realm Assignment.",
  withRealmId(value):: (
    local converted = value;
    assert std.isString(converted) : '"realm_id" expected to be of type "string"';
    {
      realm_id: converted,
    }
  ),
  "#withStatus":: "Defines whether the Realm Assignment is active or not. Valid values: `ACTIVE` and `INACTIVE`.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}
