{
  local block = self,
  new(terraformName, privateDnsEnabled, vpcEndpointId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_endpoint_private_dns",
          type:: "resource",
          attributes:: ["private_dns_enabled", "region", "vpc_endpoint_id"],
        },
      },
    }
    + block.withPrivateDnsEnabled(privateDnsEnabled)
    + block.withVpcEndpointId(vpcEndpointId)
  ),
  withPrivateDnsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"private_dns_enabled" expected to be of type "bool"';
    {
      private_dns_enabled: converted,
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
