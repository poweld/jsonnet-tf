{
  local block = self,
  new(terraformName, connectAttachmentId, peerAddress):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_connect_peer",
          type:: "resource",
          attributes:: ["arn", "configuration", "connect_attachment_id", "connect_peer_id", "core_network_address", "core_network_id", "created_at", "edge_location", "id", "inside_cidr_blocks", "peer_address", "state", "subnet_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withConnectAttachmentId(connectAttachmentId)
    + block.withPeerAddress(peerAddress)
  ),
  withConnectAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"connect_attachment_id" expected to be of type "string"';
    {
      connect_attachment_id: converted,
    }
  ),
  withCoreNetworkAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_address" expected to be of type "string"';
    {
      core_network_address: converted,
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
    assert std.isArray(converted) : '"inside_cidr_blocks" expected to be of type "list"';
    {
      inside_cidr_blocks: converted,
    }
  ),
  withInsideCidrBlocksMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"inside_cidr_blocks" expected to be of type "list"';
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
  withSubnetArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_arn" expected to be of type "string"';
    {
      subnet_arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  bgp_options:: {
    local block = self,
    new():: (
      {}
    ),
    withPeerAsn(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"peer_asn" expected to be of type "number"';
      {
        peer_asn: converted,
      }
    ),
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
  withBgpOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bgp_options: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withBgpOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bgp_options+: converted,
    }
  ),
}
