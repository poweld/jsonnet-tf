{
  local block = self,
  new(terraformName, queryString):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_resourceexplorer2_search",
          type:: "data",
          attributes:: ["id", "query_string", "region", "resource_count", "resources", "view_arn"],
        },
      },
    }
    + block.withQueryString(queryString)
  ),
  withQueryString(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_string" expected to be of type "string"';
    {
      query_string: converted,
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
  withViewArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"view_arn" expected to be of type "string"';
    {
      view_arn: converted,
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
