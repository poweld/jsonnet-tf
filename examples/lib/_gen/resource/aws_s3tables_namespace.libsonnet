{
  local block = self,
  new(terraformName, namespace, tableBucketArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3tables_namespace",
          type:: "resource",
          attributes:: ["created_at", "created_by", "namespace", "owner_account_id", "region", "table_bucket_arn"],
        },
      },
    }
    + block.withNamespace(namespace)
    + block.withTableBucketArn(tableBucketArn)
  ),
  withNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
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
  withTableBucketArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_bucket_arn" expected to be of type "string"';
    {
      table_bucket_arn: converted,
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
