{
  local block = self,
  new(terraformName, botName, botVersion, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lex_bot_alias",
          type:: "resource",
          attributes:: ["arn", "bot_name", "bot_version", "checksum", "created_date", "description", "id", "last_updated_date", "name", "region"],
        },
      },
    }
    + block.withBotName(botName)
    + block.withBotVersion(botVersion)
    + block.withName(name)
  ),
  withBotName(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_name" expected to be of type "string"';
    {
      bot_name: converted,
    }
  ),
  withBotVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_version" expected to be of type "string"';
    {
      bot_version: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  conversation_logs:: {
    local block = self,
    new(iamRoleArn):: (
      {}
      + block.withIamRoleArn(iamRoleArn)
    ),
    withIamRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
      {
        iam_role_arn: converted,
      }
    ),
    log_settings:: {
      local block = self,
      new(destination, logType, resourceArn):: (
        {}
        + block.withDestination(destination)
        + block.withLogType(logType)
        + block.withResourceArn(resourceArn)
      ),
      withDestination(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination" expected to be of type "string"';
        {
          destination: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withLogType(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_type" expected to be of type "string"';
        {
          log_type: converted,
        }
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
        }
      ),
    },
    withLogSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_settings: value,
      }
    ),
    withLogSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_settings+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withConversationLogs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      conversation_logs: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConversationLogsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      conversation_logs+: converted,
    }
  ),
}
