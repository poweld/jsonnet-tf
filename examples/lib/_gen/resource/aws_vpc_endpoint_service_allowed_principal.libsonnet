{
  local block = self,
  new(terraformName, principalArn, vpcEndpointServiceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_endpoint_service_allowed_principal",
          type:: "resource",
          attributes:: ["id", "principal_arn", "region", "vpc_endpoint_service_id"],
        },
      },
    }
    + block.withPrincipalArn(principalArn)
    + block.withVpcEndpointServiceId(vpcEndpointServiceId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrincipalArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_arn" expected to be of type "string"';
    {
      principal_arn: converted,
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
  withVpcEndpointServiceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_service_id" expected to be of type "string"';
    {
      vpc_endpoint_service_id: converted,
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
