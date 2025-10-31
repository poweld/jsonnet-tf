{
  local block = self,
  new(terraformName, configurationName, iamRoleArn, slackChannelId, slackTeamId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chatbot_slack_channel_configuration",
          type:: "resource",
          attributes:: ["chat_configuration_arn", "configuration_name", "guardrail_policy_arns", "iam_role_arn", "logging_level", "region", "slack_channel_id", "slack_channel_name", "slack_team_id", "slack_team_name", "sns_topic_arns", "tags", "tags_all", "user_authorization_required"],
        },
      },
    }
    + block.withConfigurationName(configurationName)
    + block.withIamRoleArn(iamRoleArn)
    + block.withSlackChannelId(slackChannelId)
    + block.withSlackTeamId(slackTeamId)
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
  withSlackChannelId(value):: (
    local converted = value;
    assert std.isString(converted) : '"slack_channel_id" expected to be of type "string"';
    {
      slack_channel_id: converted,
    }
  ),
  withSlackTeamId(value):: (
    local converted = value;
    assert std.isString(converted) : '"slack_team_id" expected to be of type "string"';
    {
      slack_team_id: converted,
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
