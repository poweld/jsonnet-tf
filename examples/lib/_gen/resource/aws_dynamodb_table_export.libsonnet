{
  local block = self,
  new(terraformName, s3Bucket, tableArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dynamodb_table_export",
          type:: "resource",
          attributes:: ["arn", "billed_size_in_bytes", "end_time", "export_format", "export_status", "export_time", "export_type", "id", "item_count", "manifest_files_s3_key", "region", "s3_bucket", "s3_bucket_owner", "s3_prefix", "s3_sse_algorithm", "s3_sse_kms_key_id", "start_time", "table_arn"],
        },
      },
    }
    + block.withS3Bucket(s3Bucket)
    + block.withTableArn(tableArn)
  ),
  withExportFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_format" expected to be of type "string"';
    {
      export_format: converted,
    }
  ),
  withExportTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_time" expected to be of type "string"';
    {
      export_time: converted,
    }
  ),
  withExportType(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_type" expected to be of type "string"';
    {
      export_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withS3Bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
    {
      s3_bucket: converted,
    }
  ),
  withS3BucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_owner" expected to be of type "string"';
    {
      s3_bucket_owner: converted,
    }
  ),
  withS3Prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
    {
      s3_prefix: converted,
    }
  ),
  withS3SseAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_sse_algorithm" expected to be of type "string"';
    {
      s3_sse_algorithm: converted,
    }
  ),
  withS3SseKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_sse_kms_key_id" expected to be of type "string"';
    {
      s3_sse_kms_key_id: converted,
    }
  ),
  withTableArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_arn" expected to be of type "string"';
    {
      table_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  incremental_export_specification:: {
    local block = self,
    new():: (
      {}
    ),
    withExportFromTime(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_from_time" expected to be of type "string"';
      {
        export_from_time: converted,
      }
    ),
    withExportToTime(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_to_time" expected to be of type "string"';
      {
        export_to_time: converted,
      }
    ),
    withExportViewType(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_view_type" expected to be of type "string"';
      {
        export_view_type: converted,
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
  withIncrementalExportSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      incremental_export_specification: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withIncrementalExportSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      incremental_export_specification+: converted,
    }
  ),
}
