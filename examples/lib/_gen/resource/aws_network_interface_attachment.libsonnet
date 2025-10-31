{
  local block = self,
  new(terraformName, deviceIndex, instanceId, networkInterfaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_network_interface_attachment",
          type:: "resource",
          attributes:: ["attachment_id", "device_index", "id", "instance_id", "network_card_index", "network_interface_id", "region", "status"],
        },
      },
    }
    + block.withDeviceIndex(deviceIndex)
    + block.withInstanceId(instanceId)
    + block.withNetworkInterfaceId(networkInterfaceId)
  ),
  withDeviceIndex(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"device_index" expected to be of type "number"';
    {
      device_index: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  withNetworkCardIndex(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"network_card_index" expected to be of type "number"';
    {
      network_card_index: converted,
    }
  ),
  withNetworkInterfaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
