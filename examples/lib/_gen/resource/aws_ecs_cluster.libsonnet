{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_cluster",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
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
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    execute_command_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      withLogging(value):: (
        local converted = value;
        assert std.isString(converted) : '"logging" expected to be of type "string"';
        {
          logging: converted,
        }
      ),
      log_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withCloudWatchEncryptionEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"cloud_watch_encryption_enabled" expected to be of type "bool"';
          {
            cloud_watch_encryption_enabled: converted,
          }
        ),
        withCloudWatchLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"cloud_watch_log_group_name" expected to be of type "string"';
          {
            cloud_watch_log_group_name: converted,
          }
        ),
        withS3BucketEncryptionEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"s3_bucket_encryption_enabled" expected to be of type "bool"';
          {
            s3_bucket_encryption_enabled: converted,
          }
        ),
        withS3BucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
          {
            s3_bucket_name: converted,
          }
        ),
        withS3KeyPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
          {
            s3_key_prefix: converted,
          }
        ),
      },
      withLogConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          log_configuration: value,
        }
      ),
      withLogConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          log_configuration+: converted,
        }
      ),
    },
    managed_storage_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withFargateEphemeralStorageKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"fargate_ephemeral_storage_kms_key_id" expected to be of type "string"';
        {
          fargate_ephemeral_storage_kms_key_id: converted,
        }
      ),
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
    },
    withExecuteCommandConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execute_command_configuration: value,
      }
    ),
    withManagedStorageConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_storage_configuration: value,
      }
    ),
    withExecuteCommandConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execute_command_configuration+: converted,
      }
    ),
    withManagedStorageConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_storage_configuration+: converted,
      }
    ),
  },
  service_connect_defaults:: {
    local block = self,
    new(namespace):: (
      {}
      + block.withNamespace(namespace)
    ),
    withNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
  },
  setting:: {
    local block = self,
    new(name, value):: (
      {}
      + block.withName(name)
      + block.withValue(value)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withServiceConnectDefaults(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_connect_defaults: value,
    }
  ),
  withSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  withServiceConnectDefaultsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_connect_defaults+: converted,
    }
  ),
  withSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting+: converted,
    }
  ),
}
