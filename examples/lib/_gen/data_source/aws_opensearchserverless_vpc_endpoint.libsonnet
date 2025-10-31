{
  local block = self,
  new(terraformName, vpcEndpointId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_opensearchserverless_vpc_endpoint",
          type:: "data",
          attributes:: ["created_date", "id", "name", "region", "security_group_ids", "subnet_ids", "vpc_endpoint_id", "vpc_id"],
        },
      },
    }
    + block.withVpcEndpointId(vpcEndpointId)
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
  "#withVpcEndpointId":: "The unique identifier of the endpoint.",
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
