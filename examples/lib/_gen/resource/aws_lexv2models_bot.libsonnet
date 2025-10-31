{
  local block = self,
  new(terraformName, idleSessionTtlInSeconds, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lexv2models_bot",
          type:: "resource",
          attributes:: ["arn", "description", "id", "idle_session_ttl_in_seconds", "name", "region", "role_arn", "tags", "tags_all", "test_bot_alias_tags", "type"],
        },
      },
    }
    + block.withIdleSessionTtlInSeconds(idleSessionTtlInSeconds)
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withIdleSessionTtlInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_session_ttl_in_seconds" expected to be of type "number"';
    {
      idle_session_ttl_in_seconds: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTestBotAliasTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"test_bot_alias_tags" expected to be of type "map"';
    {
      test_bot_alias_tags: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  data_privacy:: {
    local block = self,
    new(childDirected):: (
      {}
      + block.withChildDirected(childDirected)
    ),
    withChildDirected(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"child_directed" expected to be of type "bool"';
      {
        child_directed: converted,
      }
    ),
  },
  members:: {
    local block = self,
    new(aliasId, aliasName, id, name, version):: (
      {}
      + block.withAliasId(aliasId)
      + block.withAliasName(aliasName)
      + block.withId(id)
      + block.withName(name)
      + block.withVersion(version)
    ),
    withAliasId(value):: (
      local converted = value;
      assert std.isString(converted) : '"alias_id" expected to be of type "string"';
      {
        alias_id: converted,
      }
    ),
    withAliasName(value):: (
      local converted = value;
      assert std.isString(converted) : '"alias_name" expected to be of type "string"';
      {
        alias_name: converted,
      }
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withDataPrivacy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_privacy: value,
    }
  ),
  withMembers(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      members: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDataPrivacyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_privacy+: converted,
    }
  ),
  withMembersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      members+: converted,
    }
  ),
}
