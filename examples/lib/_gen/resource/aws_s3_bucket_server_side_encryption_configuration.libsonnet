{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_server_side_encryption_configuration",
          type:: "resource",
          attributes:: ["bucket", "expected_bucket_owner", "id", "region"],
        },
      },
    }
    + block.withBucket(bucket)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  rule:: {
    local block = self,
    new():: (
      {}
    ),
    withBucketKeyEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"bucket_key_enabled" expected to be of type "bool"';
      {
        bucket_key_enabled: converted,
      }
    ),
    apply_server_side_encryption_by_default:: {
      local block = self,
      new(sseAlgorithm):: (
        {}
        + block.withSseAlgorithm(sseAlgorithm)
      ),
      withKmsMasterKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_master_key_id" expected to be of type "string"';
        {
          kms_master_key_id: converted,
        }
      ),
      withSseAlgorithm(value):: (
        local converted = value;
        assert std.isString(converted) : '"sse_algorithm" expected to be of type "string"';
        {
          sse_algorithm: converted,
        }
      ),
    },
    withApplyServerSideEncryptionByDefault(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        apply_server_side_encryption_by_default: value,
      }
    ),
    withApplyServerSideEncryptionByDefaultMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        apply_server_side_encryption_by_default+: converted,
      }
    ),
  },
  withRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  withRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
