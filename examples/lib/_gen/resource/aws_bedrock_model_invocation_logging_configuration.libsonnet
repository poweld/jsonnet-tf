{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrock_model_invocation_logging_configuration",
          type:: "resource",
          attributes:: ["id", "region"],
        },
      },
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
  logging_config:: {
    local block = self,
    new():: (
      {}
    ),
    withEmbeddingDataDeliveryEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"embedding_data_delivery_enabled" expected to be of type "bool"';
      {
        embedding_data_delivery_enabled: converted,
      }
    ),
    withImageDataDeliveryEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"image_data_delivery_enabled" expected to be of type "bool"';
      {
        image_data_delivery_enabled: converted,
      }
    ),
    withTextDataDeliveryEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"text_data_delivery_enabled" expected to be of type "bool"';
      {
        text_data_delivery_enabled: converted,
      }
    ),
    withVideoDataDeliveryEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"video_data_delivery_enabled" expected to be of type "bool"';
      {
        video_data_delivery_enabled: converted,
      }
    ),
    cloudwatch_config:: {
      local block = self,
      new():: (
        {}
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      large_data_delivery_s3_config:: {
        local block = self,
        new():: (
          {}
        ),
        withBucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        withKeyPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
          {
            key_prefix: converted,
          }
        ),
      },
      withLargeDataDeliveryS3Config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          large_data_delivery_s3_config: value,
        }
      ),
      withLargeDataDeliveryS3ConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          large_data_delivery_s3_config+: converted,
        }
      ),
    },
    s3_config:: {
      local block = self,
      new():: (
        {}
      ),
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      withKeyPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
        {
          key_prefix: converted,
        }
      ),
    },
    withCloudwatchConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_config: value,
      }
    ),
    withS3Config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config: value,
      }
    ),
    withCloudwatchConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_config+: converted,
      }
    ),
    withS3ConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config+: converted,
      }
    ),
  },
  withLoggingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config: value,
    }
  ),
  withLoggingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config+: converted,
    }
  ),
}
