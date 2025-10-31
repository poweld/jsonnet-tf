{
  local block = self,
  new(terraformName, name, namespace, resourcePolicy, tableBucketArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3tables_table_policy",
          type:: "resource",
          attributes:: ["name", "namespace", "region", "resource_policy", "table_bucket_arn"],
        },
      },
    }
    + block.withName(name)
    + block.withNamespace(namespace)
    + block.withResourcePolicy(resourcePolicy)
    + block.withTableBucketArn(tableBucketArn)
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
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
