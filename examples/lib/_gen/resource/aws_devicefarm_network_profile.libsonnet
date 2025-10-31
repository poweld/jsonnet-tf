{
  local block = self,
  new(terraformName, name, projectArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_devicefarm_network_profile",
          type:: "resource",
          attributes:: ["arn", "description", "downlink_bandwidth_bits", "downlink_delay_ms", "downlink_jitter_ms", "downlink_loss_percent", "id", "name", "project_arn", "region", "tags", "tags_all", "type", "uplink_bandwidth_bits", "uplink_delay_ms", "uplink_jitter_ms", "uplink_loss_percent"],
        },
      },
    }
    + block.withName(name)
    + block.withProjectArn(projectArn)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDownlinkBandwidthBits(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"downlink_bandwidth_bits" expected to be of type "number"';
    {
      downlink_bandwidth_bits: converted,
    }
  ),
  withDownlinkDelayMs(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"downlink_delay_ms" expected to be of type "number"';
    {
      downlink_delay_ms: converted,
    }
  ),
  withDownlinkJitterMs(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"downlink_jitter_ms" expected to be of type "number"';
    {
      downlink_jitter_ms: converted,
    }
  ),
  withDownlinkLossPercent(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"downlink_loss_percent" expected to be of type "number"';
    {
      downlink_loss_percent: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withProjectArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_arn" expected to be of type "string"';
    {
      project_arn: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withUplinkBandwidthBits(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"uplink_bandwidth_bits" expected to be of type "number"';
    {
      uplink_bandwidth_bits: converted,
    }
  ),
  withUplinkDelayMs(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"uplink_delay_ms" expected to be of type "number"';
    {
      uplink_delay_ms: converted,
    }
  ),
  withUplinkJitterMs(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"uplink_jitter_ms" expected to be of type "number"';
    {
      uplink_jitter_ms: converted,
    }
  ),
  withUplinkLossPercent(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"uplink_loss_percent" expected to be of type "number"';
    {
      uplink_loss_percent: converted,
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
