{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_public_access_block",
          type:: "resource",
          attributes:: ["block_public_acls", "block_public_policy", "bucket", "id", "ignore_public_acls", "region", "restrict_public_buckets", "skip_destroy"],
        },
      },
    }
    + block.withBucket(bucket)
  ),
  withBlockPublicAcls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_acls" expected to be of type "bool"';
    {
      block_public_acls: converted,
    }
  ),
  withBlockPublicPolicy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_policy" expected to be of type "bool"';
    {
      block_public_policy: converted,
    }
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
  withIgnorePublicAcls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_public_acls" expected to be of type "bool"';
    {
      ignore_public_acls: converted,
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
  withRestrictPublicBuckets(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"restrict_public_buckets" expected to be of type "bool"';
    {
      restrict_public_buckets: converted,
    }
  ),
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
