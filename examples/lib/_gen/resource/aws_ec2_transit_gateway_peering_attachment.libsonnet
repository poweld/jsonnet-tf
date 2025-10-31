{
  local block = self,
  new(terraformName, peerRegion, peerTransitGatewayId, transitGatewayId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_peering_attachment",
          type:: "resource",
          attributes:: ["arn", "id", "peer_account_id", "peer_region", "peer_transit_gateway_id", "region", "state", "tags", "tags_all", "transit_gateway_id"],
        },
      },
    }
    + block.withPeerRegion(peerRegion)
    + block.withPeerTransitGatewayId(peerTransitGatewayId)
    + block.withTransitGatewayId(transitGatewayId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPeerAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_account_id" expected to be of type "string"';
    {
      peer_account_id: converted,
    }
  ),
  withPeerRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_region" expected to be of type "string"';
    {
      peer_region: converted,
    }
  ),
  withPeerTransitGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_transit_gateway_id" expected to be of type "string"';
    {
      peer_transit_gateway_id: converted,
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
  withTransitGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  options:: {
    local block = self,
    new():: (
      {}
    ),
    withDynamicRouting(value):: (
      local converted = value;
      assert std.isString(converted) : '"dynamic_routing" expected to be of type "string"';
      {
        dynamic_routing: converted,
      }
    ),
  },
  withOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options: value,
    }
  ),
  withOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options+: converted,
    }
  ),
}
