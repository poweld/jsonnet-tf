{
  local block = self,
  new(terraformName, bucket, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_analytics_configuration",
          type:: "resource",
          attributes:: ["bucket", "id", "name", "region"],
        },
      },
    }
    + block.withBucket(bucket)
    + block.withName(name)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
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
  filter:: {
    local block = self,
    new():: (
      {}
    ),
    withPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    withTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
  },
  storage_class_analysis:: {
    local block = self,
    new():: (
      {}
    ),
    data_export:: {
      local block = self,
      new():: (
        {}
      ),
      withOutputSchemaVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_schema_version" expected to be of type "string"';
        {
          output_schema_version: converted,
        }
      ),
      destination:: {
        local block = self,
        new():: (
          {}
        ),
        s3_bucket_destination:: {
          local block = self,
          new(bucketArn):: (
            {}
            + block.withBucketArn(bucketArn)
          ),
          withBucketAccountId(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_account_id" expected to be of type "string"';
            {
              bucket_account_id: converted,
            }
          ),
          withBucketArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
            {
              bucket_arn: converted,
            }
          ),
          withFormat(value):: (
            local converted = value;
            assert std.isString(converted) : '"format" expected to be of type "string"';
            {
              format: converted,
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
        withS3BucketDestination(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_bucket_destination: value,
          }
        ),
        withS3BucketDestinationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_bucket_destination+: converted,
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
    withDataExport(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_export: value,
      }
    ),
    withDataExportMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_export+: converted,
      }
    ),
  },
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withStorageClassAnalysis(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_class_analysis: value,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
  withStorageClassAnalysisMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_class_analysis+: converted,
    }
  ),
}
