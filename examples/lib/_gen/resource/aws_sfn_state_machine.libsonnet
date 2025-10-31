{
  local block = self,
  new(terraformName, definition, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sfn_state_machine",
          type:: "resource",
          attributes:: ["arn", "creation_date", "definition", "description", "id", "name", "name_prefix", "publish", "region", "revision_id", "role_arn", "state_machine_version_arn", "status", "tags", "tags_all", "type", "version_description"],
        },
      },
    }
    + block.withDefinition(definition)
    + block.withRoleArn(roleArn)
  ),
  withDefinition(value):: (
    local converted = value;
    assert std.isString(converted) : '"definition" expected to be of type "string"';
    {
      definition: converted,
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
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPublish(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publish" expected to be of type "bool"';
    {
      publish: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
  encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withKmsDataKeyReusePeriodSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"kms_data_key_reuse_period_seconds" expected to be of type "number"';
      {
        kms_data_key_reuse_period_seconds: converted,
      }
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  logging_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withIncludeExecutionData(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_execution_data" expected to be of type "bool"';
      {
        include_execution_data: converted,
      }
    ),
    withLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"level" expected to be of type "string"';
      {
        level: converted,
      }
    ),
    withLogDestination(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_destination" expected to be of type "string"';
      {
        log_destination: converted,
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
  tracing_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withLoggingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTracingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracing_configuration: value,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  withLoggingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration+: converted,
    }
  ),
  withTracingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracing_configuration+: converted,
    }
  ),
}
