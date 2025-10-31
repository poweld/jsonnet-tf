{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ivs_recording_configuration",
          type:: "resource",
          attributes:: ["arn", "id", "name", "recording_reconnect_window_seconds", "region", "state", "tags", "tags_all"],
        },
      },
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
  withRecordingReconnectWindowSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"recording_reconnect_window_seconds" expected to be of type "number"';
    {
      recording_reconnect_window_seconds: converted,
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
  destination_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3:: {
      local block = self,
      new(bucketName):: (
        {}
        + block.withBucketName(bucketName)
      ),
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
    },
    withS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
  },
  thumbnail_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withRecordingMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"recording_mode" expected to be of type "string"';
      {
        recording_mode: converted,
      }
    ),
    withTargetIntervalSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"target_interval_seconds" expected to be of type "number"';
      {
        target_interval_seconds: converted,
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
  },
  withDestinationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration: value,
    }
  ),
  withThumbnailConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDestinationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration+: converted,
    }
  ),
  withThumbnailConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_configuration+: converted,
    }
  ),
}
