{
  local block = self,
  new(terraformName, channelId, configurationName, iamRoleArn, teamId, tenantId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chatbot_teams_channel_configuration",
          type:: "resource",
          attributes:: ["channel_id", "channel_name", "chat_configuration_arn", "configuration_name", "guardrail_policy_arns", "iam_role_arn", "logging_level", "region", "sns_topic_arns", "tags", "tags_all", "team_id", "team_name", "tenant_id", "user_authorization_required"],
        },
      },
    }
    + block.withChannelId(channelId)
    + block.withConfigurationName(configurationName)
    + block.withIamRoleArn(iamRoleArn)
    + block.withTeamId(teamId)
    + block.withTenantId(tenantId)
  ),
  withChannelId(value):: (
    local converted = value;
    assert std.isString(converted) : '"channel_id" expected to be of type "string"';
    {
      channel_id: converted,
    }
  ),
  withChannelName(value):: (
    local converted = value;
    assert std.isString(converted) : '"channel_name" expected to be of type "string"';
    {
      channel_name: converted,
    }
  ),
  withConfigurationName(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_name" expected to be of type "string"';
    {
      configuration_name: converted,
    }
  ),
  withGuardrailPolicyArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"guardrail_policy_arns" expected to be of type "list"';
    {
      guardrail_policy_arns: converted,
    }
  ),
  withGuardrailPolicyArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"guardrail_policy_arns" expected to be of type "list"';
    {
      guardrail_policy_arns+: converted,
    }
  ),
  withIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  withLoggingLevel(value):: (
    local converted = value;
    assert std.isString(converted) : '"logging_level" expected to be of type "string"';
    {
      logging_level: converted,
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
  withSnsTopicArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sns_topic_arns" expected to be of type "set"';
    {
      sns_topic_arns: converted,
    }
  ),
  withSnsTopicArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sns_topic_arns" expected to be of type "set"';
    {
      sns_topic_arns+: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTeamId(value):: (
    local converted = value;
    assert std.isString(converted) : '"team_id" expected to be of type "string"';
    {
      team_id: converted,
    }
  ),
  withTeamName(value):: (
    local converted = value;
    assert std.isString(converted) : '"team_name" expected to be of type "string"';
    {
      team_name: converted,
    }
  ),
  withTenantId(value):: (
    local converted = value;
    assert std.isString(converted) : '"tenant_id" expected to be of type "string"';
    {
      tenant_id: converted,
    }
  ),
  withUserAuthorizationRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"user_authorization_required" expected to be of type "bool"';
    {
      user_authorization_required: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
