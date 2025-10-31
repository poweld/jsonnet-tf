{
  local block = self,
  new(terraformName, vpcLinkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_vpc_link",
          type:: "data",
          attributes:: ["arn", "id", "name", "region", "security_group_ids", "subnet_ids", "tags", "vpc_link_id"],
        },
      },
    }
    + block.withVpcLinkId(vpcLinkId)
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withVpcLinkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_link_id" expected to be of type "string"';
    {
      vpc_link_id: converted,
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
