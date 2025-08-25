{
  local block = self,
  new(name, expression_value, group_assignments):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_group_rule",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "expression_type", "expression_value", "group_assignments", "id", "remove_assigned_users", "status", "users_excluded"],
      },
    }
    + block.withName(name)
    + block.withExpressionValue(expression_value)
    + block.withGroupAssignments(group_assignments)
  ),
  "#withExpressionType":: "The expression type to use to invoke the rule. The default is `urn:okta:expression:1.0`.",
  withExpressionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"expression_type" expected to be of type "string"';
    {
      expression_type: converted,
    }
  ),
  "#withExpressionValue":: "The expression value.",
  withExpressionValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"expression_value" expected to be of type "string"';
    {
      expression_value: converted,
    }
  ),
  "#withGroupAssignments":: "The list of group ids to assign the users to.",
  withGroupAssignments(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_assignments" expected to be of type "set"';
    {
      group_assignments: converted,
    }
  ),
  "#withGroupAssignmentsMixin":: "The list of group ids to assign the users to.",
  withGroupAssignmentsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_assignments" expected to be of type "set"';
    {
      group_assignments+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The name of the Group Rule (min character 1; max characters 50).",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withRemoveAssignedUsers":: "Remove users added by this rule from the assigned group after deleting this resource. Default is `false`",
  withRemoveAssignedUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"remove_assigned_users" expected to be of type "bool"';
    {
      remove_assigned_users: converted,
    }
  ),
  "#withStatus":: "Default to `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withUsersExcluded":: "The list of user IDs that would be excluded when rules are processed",
  withUsersExcluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded: converted,
    }
  ),
  "#withUsersExcludedMixin":: "The list of user IDs that would be excluded when rules are processed",
  withUsersExcludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded+: converted,
    }
  ),
}
