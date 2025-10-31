{
  local block = self,
  new(terraformName, revocationsS3Bucket, revocationsS3Key, trustStoreArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lb_trust_store_revocation",
          type:: "resource",
          attributes:: ["id", "region", "revocation_id", "revocations_s3_bucket", "revocations_s3_key", "revocations_s3_object_version", "trust_store_arn"],
        },
      },
    }
    + block.withRevocationsS3Bucket(revocationsS3Bucket)
    + block.withRevocationsS3Key(revocationsS3Key)
    + block.withTrustStoreArn(trustStoreArn)
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
  withRevocationsS3Bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"revocations_s3_bucket" expected to be of type "string"';
    {
      revocations_s3_bucket: converted,
    }
  ),
  withRevocationsS3Key(value):: (
    local converted = value;
    assert std.isString(converted) : '"revocations_s3_key" expected to be of type "string"';
    {
      revocations_s3_key: converted,
    }
  ),
  withRevocationsS3ObjectVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"revocations_s3_object_version" expected to be of type "string"';
    {
      revocations_s3_object_version: converted,
    }
  ),
  withTrustStoreArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_store_arn" expected to be of type "string"';
    {
      trust_store_arn: converted,
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
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
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
