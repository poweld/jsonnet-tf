{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rolesanywhere_profile",
          type:: "resource",
          attributes:: ["arn", "duration_seconds", "enabled", "id", "managed_policy_arns", "name", "require_instance_properties", "role_arns", "session_policy", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withDurationSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration_seconds" expected to be of type "number"';
    {
      duration_seconds: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withRequireInstanceProperties(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_instance_properties" expected to be of type "bool"';
    {
      require_instance_properties: converted,
    }
  ),
  withRoleArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"role_arns" expected to be of type "set"';
    {
      role_arns: converted,
    }
  ),
  withRoleArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"role_arns" expected to be of type "set"';
    {
      role_arns+: converted,
    }
  ),
  withSessionPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"session_policy" expected to be of type "string"';
    {
      session_policy: converted,
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
}
