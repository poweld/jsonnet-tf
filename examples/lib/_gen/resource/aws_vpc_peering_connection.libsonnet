{
  local block = self,
  new(terraformName, peerVpcId, vpcId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_peering_connection",
          type:: "resource",
          attributes:: ["accept_status", "auto_accept", "id", "peer_owner_id", "peer_region", "peer_vpc_id", "region", "tags", "tags_all", "vpc_id"],
        },
      },
    }
    + block.withPeerVpcId(peerVpcId)
    + block.withVpcId(vpcId)
  ),
  withAutoAccept(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_accept" expected to be of type "bool"';
    {
      auto_accept: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPeerOwnerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_owner_id" expected to be of type "string"';
    {
      peer_owner_id: converted,
    }
  ),
  withPeerRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_region" expected to be of type "string"';
    {
      peer_region: converted,
    }
  ),
  withPeerVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_vpc_id" expected to be of type "string"';
    {
      peer_vpc_id: converted,
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
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  accepter:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowRemoteVpcDnsResolution(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_remote_vpc_dns_resolution" expected to be of type "bool"';
      {
        allow_remote_vpc_dns_resolution: converted,
      }
    ),
  },
  requester:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowRemoteVpcDnsResolution(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_remote_vpc_dns_resolution" expected to be of type "bool"';
      {
        allow_remote_vpc_dns_resolution: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAccepter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      accepter: value,
    }
  ),
  withRequester(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      requester: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAccepterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      accepter+: converted,
    }
  ),
  withRequesterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      requester+: converted,
    }
  ),
}
