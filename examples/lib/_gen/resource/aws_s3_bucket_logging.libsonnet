{
  local block = self,
  new(terraformName, bucket, targetBucket, targetPrefix):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_logging",
          type:: "resource",
          attributes:: ["bucket", "expected_bucket_owner", "id", "region", "target_bucket", "target_prefix"],
        },
      },
    }
    + block.withBucket(bucket)
    + block.withTargetBucket(targetBucket)
    + block.withTargetPrefix(targetPrefix)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withExpectedBucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
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
  withTargetBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_bucket" expected to be of type "string"';
    {
      target_bucket: converted,
    }
  ),
  withTargetPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_prefix" expected to be of type "string"';
    {
      target_prefix: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  target_grant:: {
    local block = self,
    new(permission):: (
      {}
      + block.withPermission(permission)
    ),
    withPermission(value):: (
      local converted = value;
      assert std.isString(converted) : '"permission" expected to be of type "string"';
      {
        permission: converted,
      }
    ),
    grantee:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withEmailAddress(value):: (
        local converted = value;
        assert std.isString(converted) : '"email_address" expected to be of type "string"';
        {
          email_address: converted,
        }
      ),
      withId(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      withUri(value):: (
        local converted = value;
        assert std.isString(converted) : '"uri" expected to be of type "string"';
        {
          uri: converted,
        }
      ),
    },
    withGrantee(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grantee: value,
      }
    ),
    withGranteeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grantee+: converted,
      }
    ),
  },
  target_object_key_format:: {
    local block = self,
    new():: (
      {}
    ),
    partitioned_prefix:: {
      local block = self,
      new(partitionDateSource):: (
        {}
        + block.withPartitionDateSource(partitionDateSource)
      ),
      withPartitionDateSource(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition_date_source" expected to be of type "string"';
        {
          partition_date_source: converted,
        }
      ),
    },
    simple_prefix:: {
      local block = self,
      new():: (
        {}
      ),
    },
    withPartitionedPrefix(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        partitioned_prefix: value,
      }
    ),
    withSimplePrefix(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        simple_prefix: value,
      }
    ),
    withPartitionedPrefixMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        partitioned_prefix+: converted,
      }
    ),
    withSimplePrefixMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        simple_prefix+: converted,
      }
    ),
  },
  withTargetGrant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_grant: value,
    }
  ),
  withTargetObjectKeyFormat(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_object_key_format: value,
    }
  ),
  withTargetGrantMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_grant+: converted,
    }
  ),
  withTargetObjectKeyFormatMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_object_key_format+: converted,
    }
  ),
}
