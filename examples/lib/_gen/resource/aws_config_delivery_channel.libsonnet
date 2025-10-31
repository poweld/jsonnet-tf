{
  local block = self,
  new(terraformName, s3BucketName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_config_delivery_channel",
          type:: "resource",
          attributes:: ["id", "name", "region", "s3_bucket_name", "s3_key_prefix", "s3_kms_key_arn", "sns_topic_arn"],
        },
      },
    }
    + block.withS3BucketName(s3BucketName)
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
  withS3BucketName(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
    {
      s3_bucket_name: converted,
    }
  ),
  withS3KeyPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
    {
      s3_key_prefix: converted,
    }
  ),
  withS3KmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_kms_key_arn" expected to be of type "string"';
    {
      s3_kms_key_arn: converted,
    }
  ),
  withSnsTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  snapshot_delivery_properties:: {
    local block = self,
    new():: (
      {}
    ),
    withDeliveryFrequency(value):: (
      local converted = value;
      assert std.isString(converted) : '"delivery_frequency" expected to be of type "string"';
      {
        delivery_frequency: converted,
      }
    ),
  },
  withSnapshotDeliveryProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snapshot_delivery_properties: value,
    }
  ),
  withSnapshotDeliveryPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snapshot_delivery_properties+: converted,
    }
  ),
}
