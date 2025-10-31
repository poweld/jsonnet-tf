{
  local block = self,
  new(terraformName, exportTaskIdentifier, iamRoleArn, kmsKeyId, s3BucketName, sourceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_export_task",
          type:: "resource",
          attributes:: ["export_only", "export_task_identifier", "failure_cause", "iam_role_arn", "id", "kms_key_id", "percent_progress", "region", "s3_bucket_name", "s3_prefix", "snapshot_time", "source_arn", "source_type", "status", "task_end_time", "task_start_time", "warning_message"],
        },
      },
    }
    + block.withExportTaskIdentifier(exportTaskIdentifier)
    + block.withIamRoleArn(iamRoleArn)
    + block.withKmsKeyId(kmsKeyId)
    + block.withS3BucketName(s3BucketName)
    + block.withSourceArn(sourceArn)
  ),
  withExportOnly(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"export_only" expected to be of type "list"';
    {
      export_only: converted,
    }
  ),
  withExportOnlyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"export_only" expected to be of type "list"';
    {
      export_only+: converted,
    }
  ),
  withExportTaskIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_task_identifier" expected to be of type "string"';
    {
      export_task_identifier: converted,
    }
  ),
  withIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  withS3BucketName(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
    {
      s3_bucket_name: converted,
    }
  ),
  withS3Prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
    {
      s3_prefix: converted,
    }
  ),
  withSourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_arn" expected to be of type "string"';
    {
      source_arn: converted,
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
