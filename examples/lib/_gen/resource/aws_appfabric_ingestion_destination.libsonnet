{
  local block = self,
  new(terraformName, appBundleArn, ingestionArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appfabric_ingestion_destination",
          type:: "resource",
          attributes:: ["app_bundle_arn", "arn", "id", "ingestion_arn", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAppBundleArn(appBundleArn)
    + block.withIngestionArn(ingestionArn)
  ),
  withAppBundleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_bundle_arn" expected to be of type "string"';
    {
      app_bundle_arn: converted,
    }
  ),
  withIngestionArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ingestion_arn" expected to be of type "string"';
    {
      ingestion_arn: converted,
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
    audit_log:: {
      local block = self,
      new():: (
        {}
      ),
      destination:: {
        local block = self,
        new():: (
          {}
        ),
        firehose_stream:: {
          local block = self,
          new(streamName):: (
            {}
            + block.withStreamName(streamName)
          ),
          withStreamName(value):: (
            local converted = value;
            assert std.isString(converted) : '"stream_name" expected to be of type "string"';
            {
              stream_name: converted,
            }
          ),
        },
        s3_bucket:: {
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
          withPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"prefix" expected to be of type "string"';
            {
              prefix: converted,
            }
          ),
        },
        withFirehoseStream(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            firehose_stream: value,
          }
        ),
        withS3Bucket(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_bucket: value,
          }
        ),
        withFirehoseStreamMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            firehose_stream+: converted,
          }
        ),
        withS3BucketMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_bucket+: converted,
          }
        ),
      },
      withDestination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination: value,
        }
      ),
      withDestinationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination+: converted,
        }
      ),
    },
    withAuditLog(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audit_log: value,
      }
    ),
    withAuditLogMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audit_log+: converted,
      }
    ),
  },
  processing_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    audit_log:: {
      local block = self,
      new(format, schema):: (
        {}
        + block.withFormat(format)
        + block.withSchema(schema)
      ),
      withFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"format" expected to be of type "string"';
        {
          format: converted,
        }
      ),
      withSchema(value):: (
        local converted = value;
        assert std.isString(converted) : '"schema" expected to be of type "string"';
        {
          schema: converted,
        }
      ),
    },
    withAuditLog(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audit_log: value,
      }
    ),
    withAuditLogMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audit_log+: converted,
      }
    ),
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
  withDestinationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration: value,
    }
  ),
  withProcessingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      processing_configuration: value,
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
  withProcessingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      processing_configuration+: converted,
    }
  ),
}
