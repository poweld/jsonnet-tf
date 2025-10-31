{
  local block = self,
  new(terraformName, destination, monitorName, protocol, sourceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmonitor_probe",
          type:: "resource",
          attributes:: ["address_family", "arn", "destination", "destination_port", "id", "monitor_name", "packet_size", "probe_id", "protocol", "region", "source_arn", "tags", "tags_all", "vpc_id"],
        },
      },
    }
    + block.withDestination(destination)
    + block.withMonitorName(monitorName)
    + block.withProtocol(protocol)
    + block.withSourceArn(sourceArn)
  ),
  withDestination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  withDestinationPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"destination_port" expected to be of type "number"';
    {
      destination_port: converted,
    }
  ),
  withMonitorName(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_name" expected to be of type "string"';
    {
      monitor_name: converted,
    }
  ),
  withPacketSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"packet_size" expected to be of type "number"';
    {
      packet_size: converted,
    }
  ),
  withProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  withSourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_arn" expected to be of type "string"';
    {
      source_arn: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
