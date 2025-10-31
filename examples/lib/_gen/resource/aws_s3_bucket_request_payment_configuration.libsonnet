{
  local block = self,
  new(terraformName, bucket, payer):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_request_payment_configuration",
          type:: "resource",
          attributes:: ["bucket", "expected_bucket_owner", "id", "payer", "region"],
        },
      },
    }
    + block.withBucket(bucket)
    + block.withPayer(payer)
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
  withPayer(value):: (
    local converted = value;
    assert std.isString(converted) : '"payer" expected to be of type "string"';
    {
      payer: converted,
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
}
