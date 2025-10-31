{
  local block = self,
  new(terraformName, assumeRolePolicy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_role",
          type:: "resource",
          attributes:: ["arn", "assume_role_policy", "create_date", "description", "force_detach_policies", "id", "managed_policy_arns", "max_session_duration", "name", "name_prefix", "path", "permissions_boundary", "tags", "tags_all", "unique_id"],
        },
      },
    }
    + block.withAssumeRolePolicy(assumeRolePolicy)
  ),
  withAssumeRolePolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"assume_role_policy" expected to be of type "string"';
    {
      assume_role_policy: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withForceDetachPolicies(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_detach_policies" expected to be of type "bool"';
    {
      force_detach_policies: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withManagedPolicyArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"managed_policy_arns" expected to be of type "set"';
    {
      managed_policy_arns: converted,
    }
  ),
  withManagedPolicyArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"managed_policy_arns" expected to be of type "set"';
    {
      managed_policy_arns+: converted,
    }
  ),
  withMaxSessionDuration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_session_duration" expected to be of type "number"';
    {
      max_session_duration: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  withPermissionsBoundary(value):: (
    local converted = value;
    assert std.isString(converted) : '"permissions_boundary" expected to be of type "string"';
    {
      permissions_boundary: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  inline_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy" expected to be of type "string"';
      {
        policy: converted,
      }
    ),
  },
  withInlinePolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inline_policy: value,
    }
  ),
  withInlinePolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inline_policy+: converted,
    }
  ),
}
