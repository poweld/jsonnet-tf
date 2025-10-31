{
  local block = self,
  new(terraformName, networkInterfaceId, sessionNumber, trafficMirrorFilterId, trafficMirrorTargetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_traffic_mirror_session",
          type:: "resource",
          attributes:: ["arn", "description", "id", "network_interface_id", "owner_id", "packet_length", "region", "session_number", "tags", "tags_all", "traffic_mirror_filter_id", "traffic_mirror_target_id", "virtual_network_id"],
        },
      },
    }
    + block.withNetworkInterfaceId(networkInterfaceId)
    + block.withSessionNumber(sessionNumber)
    + block.withTrafficMirrorFilterId(trafficMirrorFilterId)
    + block.withTrafficMirrorTargetId(trafficMirrorTargetId)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNetworkInterfaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
    }
  ),
  withPacketLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"packet_length" expected to be of type "number"';
    {
      packet_length: converted,
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
  withSessionNumber(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"session_number" expected to be of type "number"';
    {
      session_number: converted,
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
  withTrafficMirrorFilterId(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_mirror_filter_id" expected to be of type "string"';
    {
      traffic_mirror_filter_id: converted,
    }
  ),
  withTrafficMirrorTargetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_mirror_target_id" expected to be of type "string"';
    {
      traffic_mirror_target_id: converted,
    }
  ),
  withVirtualNetworkId(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"virtual_network_id" expected to be of type "number"';
    {
      virtual_network_id: converted,
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
