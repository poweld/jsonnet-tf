{
  local block = self,
  new(terraformName, insideCidrBlocks, peerAddress, transitGatewayAttachmentId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_connect_peer",
          type:: "resource",
          attributes:: ["arn", "bgp_asn", "bgp_peer_address", "bgp_transit_gateway_addresses", "id", "inside_cidr_blocks", "peer_address", "region", "tags", "tags_all", "transit_gateway_address", "transit_gateway_attachment_id"],
        },
      },
    }
    + block.withInsideCidrBlocks(insideCidrBlocks)
    + block.withPeerAddress(peerAddress)
    + block.withTransitGatewayAttachmentId(transitGatewayAttachmentId)
  ),
  withBgpAsn(value):: (
    local converted = value;
    assert std.isString(converted) : '"bgp_asn" expected to be of type "string"';
    {
      bgp_asn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInsideCidrBlocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inside_cidr_blocks" expected to be of type "set"';
    {
      inside_cidr_blocks: converted,
    }
  ),
  withInsideCidrBlocksMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inside_cidr_blocks" expected to be of type "set"';
    {
      inside_cidr_blocks+: converted,
    }
  ),
  withPeerAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_address" expected to be of type "string"';
    {
      peer_address: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTransitGatewayAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_address" expected to be of type "string"';
    {
      transit_gateway_address: converted,
    }
  ),
  withTransitGatewayAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
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
