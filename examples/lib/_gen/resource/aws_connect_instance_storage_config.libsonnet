{
  local block = self,
  new(terraformName, instanceId, resourceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_instance_storage_config",
          type:: "resource",
          attributes:: ["association_id", "id", "instance_id", "region", "resource_type"],
        },
      },
    }
    + block.withInstanceId(instanceId)
    + block.withResourceType(resourceType)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  withResourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  storage_config:: {
    local block = self,
    new(storageType):: (
      {}
      + block.withStorageType(storageType)
    ),
    withStorageType(value):: (
      local converted = value;
      assert std.isString(converted) : '"storage_type" expected to be of type "string"';
      {
        storage_type: converted,
      }
    ),
    kinesis_firehose_config:: {
      local block = self,
      new(firehoseArn):: (
        {}
        + block.withFirehoseArn(firehoseArn)
      ),
      withFirehoseArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"firehose_arn" expected to be of type "string"';
        {
          firehose_arn: converted,
        }
      ),
    },
    kinesis_stream_config:: {
      local block = self,
      new(streamArn):: (
        {}
        + block.withStreamArn(streamArn)
      ),
      withStreamArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
        {
          stream_arn: converted,
        }
      ),
    },
    kinesis_video_stream_config:: {
      local block = self,
      new(prefix, retentionPeriodHours):: (
        {}
        + block.withPrefix(prefix)
        + block.withRetentionPeriodHours(retentionPeriodHours)
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRetentionPeriodHours(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"retention_period_hours" expected to be of type "number"';
        {
          retention_period_hours: converted,
        }
      ),
      encryption_config:: {
        local block = self,
        new(encryptionType, keyId):: (
          {}
          + block.withEncryptionType(encryptionType)
          + block.withKeyId(keyId)
        ),
        withEncryptionType(value):: (
          local converted = value;
          assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
          {
            encryption_type: converted,
          }
        ),
        withKeyId(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_id" expected to be of type "string"';
          {
            key_id: converted,
          }
        ),
      },
      withEncryptionConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_config: value,
        }
      ),
      withEncryptionConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_config+: converted,
        }
      ),
    },
    s3_config:: {
      local block = self,
      new(bucketName, bucketPrefix):: (
        {}
        + block.withBucketName(bucketName)
        + block.withBucketPrefix(bucketPrefix)
      ),
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      withBucketPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
        {
          bucket_prefix: converted,
        }
      ),
      encryption_config:: {
        local block = self,
        new(encryptionType, keyId):: (
          {}
          + block.withEncryptionType(encryptionType)
          + block.withKeyId(keyId)
        ),
        withEncryptionType(value):: (
          local converted = value;
          assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
          {
            encryption_type: converted,
          }
        ),
        withKeyId(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_id" expected to be of type "string"';
          {
            key_id: converted,
          }
        ),
      },
      withEncryptionConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_config: value,
        }
      ),
      withEncryptionConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_config+: converted,
        }
      ),
    },
    withKinesisFirehoseConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose_config: value,
      }
    ),
    withKinesisStreamConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_config: value,
      }
    ),
    withKinesisVideoStreamConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_video_stream_config: value,
      }
    ),
    withS3Config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config: value,
      }
    ),
    withKinesisFirehoseConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose_config+: converted,
      }
    ),
    withKinesisStreamConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_config+: converted,
      }
    ),
    withKinesisVideoStreamConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_video_stream_config+: converted,
      }
    ),
    withS3ConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config+: converted,
      }
    ),
  },
  withStorageConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_config: value,
    }
  ),
  withStorageConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_config+: converted,
    }
  ),
}
