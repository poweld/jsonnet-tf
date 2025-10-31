{
  local block = self,
  new(terraformName, subnetId, transitGatewayAttachmentId, transitGatewayMulticastDomainId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_multicast_domain_association",
          type:: "resource",
          attributes:: ["id", "region", "subnet_id", "transit_gateway_attachment_id", "transit_gateway_multicast_domain_id"],
        },
      },
    }
    + block.withSubnetId(subnetId)
    + block.withTransitGatewayAttachmentId(transitGatewayAttachmentId)
    + block.withTransitGatewayMulticastDomainId(transitGatewayMulticastDomainId)
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
  withSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
    }
  ),
  withTransitGatewayAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  withTransitGatewayMulticastDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_multicast_domain_id" expected to be of type "string"';
    {
      transit_gateway_multicast_domain_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
