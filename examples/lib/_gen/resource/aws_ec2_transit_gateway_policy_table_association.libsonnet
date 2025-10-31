{
  local block = self,
  new(terraformName, transitGatewayAttachmentId, transitGatewayPolicyTableId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_policy_table_association",
          type:: "resource",
          attributes:: ["id", "region", "resource_id", "resource_type", "transit_gateway_attachment_id", "transit_gateway_policy_table_id"],
        },
      },
    }
    + block.withTransitGatewayAttachmentId(transitGatewayAttachmentId)
    + block.withTransitGatewayPolicyTableId(transitGatewayPolicyTableId)
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
  withTransitGatewayAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  withTransitGatewayPolicyTableId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_policy_table_id" expected to be of type "string"';
    {
      transit_gateway_policy_table_id: converted,
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
