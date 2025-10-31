{
  local block = self,
  new(terraformName, resourceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_contributor_managed_insight_rules",
          type:: "data",
          attributes:: ["managed_rules", "region", "resource_arn"],
        },
      },
    }
    + block.withResourceArn(resourceArn)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withResourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
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
