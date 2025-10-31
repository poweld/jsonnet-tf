{
  local block = self,
  new(terraformName, vpcEndpointId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_endpoint_associations",
          type:: "data",
          attributes:: ["associations", "region", "vpc_endpoint_id"],
        },
      },
    }
    + block.withVpcEndpointId(vpcEndpointId)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withVpcEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
    {
      vpc_endpoint_id: converted,
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
