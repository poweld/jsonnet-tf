{
  local block = self,
  new(terraformName, resourcePolicy, tableBucketArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3tables_table_bucket_policy",
          type:: "resource",
          attributes:: ["region", "resource_policy", "table_bucket_arn"],
        },
      },
    }
    + block.withResourcePolicy(resourcePolicy)
    + block.withTableBucketArn(tableBucketArn)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withResourcePolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_policy" expected to be of type "string"';
    {
      resource_policy: converted,
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
