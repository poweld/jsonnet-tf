{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_versioning",
          type:: "resource",
          attributes:: ["bucket", "expected_bucket_owner", "id", "mfa", "region"],
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
  withMfa(value):: (
    local converted = value;
    assert std.isString(converted) : '"mfa" expected to be of type "string"';
    {
      mfa: converted,
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
  versioning_configuration:: {
    local block = self,
    new(status):: (
      {}
      + block.withStatus(status)
    ),
    withMfaDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"mfa_delete" expected to be of type "string"';
      {
        mfa_delete: converted,
      }
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  withVersioningConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      versioning_configuration: value,
    }
  ),
  withVersioningConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      versioning_configuration+: converted,
    }
  ),
}
