{
  local block = self,
  new(terraformName, bucket, includedObjectVersions, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_inventory",
          type:: "resource",
          attributes:: ["bucket", "enabled", "id", "included_object_versions", "name", "optional_fields", "region"],
        },
      },
    }
    + block.withBucket(bucket)
    + block.withIncludedObjectVersions(includedObjectVersions)
    + block.withName(name)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIncludedObjectVersions(value):: (
    local converted = value;
    assert std.isString(converted) : '"included_object_versions" expected to be of type "string"';
    {
      included_object_versions: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOptionalFields(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"optional_fields" expected to be of type "set"';
    {
      optional_fields: converted,
    }
  ),
  withOptionalFieldsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"optional_fields" expected to be of type "set"';
    {
      optional_fields+: converted,
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
  destination:: {
    local block = self,
    new():: (
      {}
    ),
    bucket:: {
      local block = self,
      new(bucketArn, format):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withFormat(format)
      ),
      withAccountId(value):: (
        local converted = value;
        assert std.isString(converted) : '"account_id" expected to be of type "string"';
        {
          account_id: converted,
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
      encryption:: {
        local block = self,
        new():: (
          {}
        ),
        sse_kms:: {
          local block = self,
          new(keyId):: (
            {}
            + block.withKeyId(keyId)
          ),
          withKeyId(value):: (
            local converted = value;
            assert std.isString(converted) : '"key_id" expected to be of type "string"';
            {
              key_id: converted,
            }
          ),
        },
        sse_s3:: {
          local block = self,
          new():: (
            {}
          ),
        },
        withSseKms(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_kms: value,
          }
        ),
        withSseS3(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_s3: value,
          }
        ),
        withSseKmsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_kms+: converted,
          }
        ),
        withSseS3Mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_s3+: converted,
          }
        ),
      },
      withEncryption(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption: value,
        }
      ),
      withEncryptionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption+: converted,
        }
      ),
    },
    withBucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket: value,
      }
    ),
    withBucketMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket+: converted,
      }
    ),
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
  },
  schedule:: {
    local block = self,
    new(frequency):: (
      {}
      + block.withFrequency(frequency)
    ),
    withFrequency(value):: (
      local converted = value;
      assert std.isString(converted) : '"frequency" expected to be of type "string"';
      {
        frequency: converted,
      }
    ),
  },
  withDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination: value,
    }
  ),
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withSchedule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule: value,
    }
  ),
  withDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination+: converted,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
  withScheduleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule+: converted,
    }
  ),
}
