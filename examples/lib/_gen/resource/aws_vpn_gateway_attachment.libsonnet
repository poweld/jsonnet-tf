{
  local block = self,
  new(terraformName, vpcId, vpnGatewayId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpn_gateway_attachment",
          type:: "resource",
          attributes:: ["id", "region", "vpc_id", "vpn_gateway_id"],
        },
      },
    }
    + block.withVpcId(vpcId)
    + block.withVpnGatewayId(vpnGatewayId)
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
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withVpnGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_gateway_id" expected to be of type "string"';
    {
      vpn_gateway_id: converted,
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
