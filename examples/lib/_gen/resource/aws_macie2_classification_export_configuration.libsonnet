{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_macie2_classification_export_configuration",
          type:: "resource",
          attributes:: ["id", "region"],
        },
      },
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
  s3_destination:: {
    local block = self,
    new(bucketName, kmsKeyArn):: (
      {}
      + block.withBucketName(bucketName)
      + block.withKmsKeyArn(kmsKeyArn)
    ),
    withBucketName(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    withKeyPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
      {
        key_prefix: converted,
      }
    ),
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
  },
  withS3Destination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_destination: value,
    }
  ),
  withS3DestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_destination+: converted,
    }
  ),
}
