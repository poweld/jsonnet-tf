{
  local block = self,
  new(terraformName, destinationLocationArn, sourceLocationArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datasync_task",
          type:: "resource",
          attributes:: ["arn", "cloudwatch_log_group_arn", "destination_location_arn", "id", "name", "region", "source_location_arn", "tags", "tags_all", "task_mode"],
        },
      },
    }
    + block.withDestinationLocationArn(destinationLocationArn)
    + block.withSourceLocationArn(sourceLocationArn)
  ),
  withCloudwatchLogGroupArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_log_group_arn" expected to be of type "string"';
    {
      cloudwatch_log_group_arn: converted,
    }
  ),
  withDestinationLocationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_location_arn" expected to be of type "string"';
    {
      destination_location_arn: converted,
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
  withSourceLocationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_location_arn" expected to be of type "string"';
    {
      source_location_arn: converted,
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
  withTaskMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_mode" expected to be of type "string"';
    {
      task_mode: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  excludes:: {
    local block = self,
    new():: (
      {}
    ),
    withFilterType(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_type" expected to be of type "string"';
      {
        filter_type: converted,
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
  includes:: {
    local block = self,
    new():: (
      {}
    ),
    withFilterType(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_type" expected to be of type "string"';
      {
        filter_type: converted,
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
  options:: {
    local block = self,
    new():: (
      {}
    ),
    withAtime(value):: (
      local converted = value;
      assert std.isString(converted) : '"atime" expected to be of type "string"';
      {
        atime: converted,
      }
    ),
    withBytesPerSecond(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bytes_per_second" expected to be of type "number"';
      {
        bytes_per_second: converted,
      }
    ),
    withGid(value):: (
      local converted = value;
      assert std.isString(converted) : '"gid" expected to be of type "string"';
      {
        gid: converted,
      }
    ),
    withLogLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_level" expected to be of type "string"';
      {
        log_level: converted,
      }
    ),
    withMtime(value):: (
      local converted = value;
      assert std.isString(converted) : '"mtime" expected to be of type "string"';
      {
        mtime: converted,
      }
    ),
    withObjectTags(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_tags" expected to be of type "string"';
      {
        object_tags: converted,
      }
    ),
    withOverwriteMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"overwrite_mode" expected to be of type "string"';
      {
        overwrite_mode: converted,
      }
    ),
    withPosixPermissions(value):: (
      local converted = value;
      assert std.isString(converted) : '"posix_permissions" expected to be of type "string"';
      {
        posix_permissions: converted,
      }
    ),
    withPreserveDeletedFiles(value):: (
      local converted = value;
      assert std.isString(converted) : '"preserve_deleted_files" expected to be of type "string"';
      {
        preserve_deleted_files: converted,
      }
    ),
    withPreserveDevices(value):: (
      local converted = value;
      assert std.isString(converted) : '"preserve_devices" expected to be of type "string"';
      {
        preserve_devices: converted,
      }
    ),
    withSecurityDescriptorCopyFlags(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_descriptor_copy_flags" expected to be of type "string"';
      {
        security_descriptor_copy_flags: converted,
      }
    ),
    withTaskQueueing(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_queueing" expected to be of type "string"';
      {
        task_queueing: converted,
      }
    ),
    withTransferMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"transfer_mode" expected to be of type "string"';
      {
        transfer_mode: converted,
      }
    ),
    withUid(value):: (
      local converted = value;
      assert std.isString(converted) : '"uid" expected to be of type "string"';
      {
        uid: converted,
      }
    ),
    withVerifyMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"verify_mode" expected to be of type "string"';
      {
        verify_mode: converted,
      }
    ),
  },
  schedule:: {
    local block = self,
    new(scheduleExpression):: (
      {}
      + block.withScheduleExpression(scheduleExpression)
    ),
    withScheduleExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
      {
        schedule_expression: converted,
      }
    ),
  },
  task_report_config:: {
    local block = self,
    new():: (
      {}
    ),
    withOutputType(value):: (
      local converted = value;
      assert std.isString(converted) : '"output_type" expected to be of type "string"';
      {
        output_type: converted,
      }
    ),
    withReportLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"report_level" expected to be of type "string"';
      {
        report_level: converted,
      }
    ),
    withS3ObjectVersioning(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_object_versioning" expected to be of type "string"';
      {
        s3_object_versioning: converted,
      }
    ),
    report_overrides:: {
      local block = self,
      new():: (
        {}
      ),
      withDeletedOverride(value):: (
        local converted = value;
        assert std.isString(converted) : '"deleted_override" expected to be of type "string"';
        {
          deleted_override: converted,
        }
      ),
      withSkippedOverride(value):: (
        local converted = value;
        assert std.isString(converted) : '"skipped_override" expected to be of type "string"';
        {
          skipped_override: converted,
        }
      ),
      withTransferredOverride(value):: (
        local converted = value;
        assert std.isString(converted) : '"transferred_override" expected to be of type "string"';
        {
          transferred_override: converted,
        }
      ),
      withVerifiedOverride(value):: (
        local converted = value;
        assert std.isString(converted) : '"verified_override" expected to be of type "string"';
        {
          verified_override: converted,
        }
      ),
    },
    s3_destination:: {
      local block = self,
      new(bucketAccessRoleArn, s3BucketArn):: (
        {}
        + block.withBucketAccessRoleArn(bucketAccessRoleArn)
        + block.withS3BucketArn(s3BucketArn)
      ),
      withBucketAccessRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_access_role_arn" expected to be of type "string"';
        {
          bucket_access_role_arn: converted,
        }
      ),
      withS3BucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket_arn" expected to be of type "string"';
        {
          s3_bucket_arn: converted,
        }
      ),
      withSubdirectory(value):: (
        local converted = value;
        assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
        {
          subdirectory: converted,
        }
      ),
    },
    withReportOverrides(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        report_overrides: value,
      }
    ),
    withS3Destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination: value,
      }
    ),
    withReportOverridesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        report_overrides+: converted,
      }
    ),
    withS3DestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination+: converted,
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
  },
  withExcludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      excludes: value,
    }
  ),
  withIncludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      includes: value,
    }
  ),
  withOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options: value,
    }
  ),
  withSchedule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule: value,
    }
  ),
  withTaskReportConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task_report_config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withExcludesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      excludes+: converted,
    }
  ),
  withIncludesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      includes+: converted,
    }
  ),
  withOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options+: converted,
    }
  ),
  withScheduleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule+: converted,
    }
  ),
  withTaskReportConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task_report_config+: converted,
    }
  ),
}
