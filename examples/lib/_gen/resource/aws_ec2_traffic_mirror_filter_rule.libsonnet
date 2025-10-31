{
  local block = self,
  new(terraformName, destinationCidrBlock, ruleAction, ruleNumber, sourceCidrBlock, trafficDirection, trafficMirrorFilterId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_traffic_mirror_filter_rule",
          type:: "resource",
          attributes:: ["arn", "description", "destination_cidr_block", "id", "protocol", "region", "rule_action", "rule_number", "source_cidr_block", "traffic_direction", "traffic_mirror_filter_id"],
        },
      },
    }
    + block.withDestinationCidrBlock(destinationCidrBlock)
    + block.withRuleAction(ruleAction)
    + block.withRuleNumber(ruleNumber)
    + block.withSourceCidrBlock(sourceCidrBlock)
    + block.withTrafficDirection(trafficDirection)
    + block.withTrafficMirrorFilterId(trafficMirrorFilterId)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDestinationCidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_cidr_block" expected to be of type "string"';
    {
      destination_cidr_block: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProtocol(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"protocol" expected to be of type "number"';
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
  withRuleAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_action" expected to be of type "string"';
    {
      rule_action: converted,
    }
  ),
  withRuleNumber(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rule_number" expected to be of type "number"';
    {
      rule_number: converted,
    }
  ),
  withSourceCidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_cidr_block" expected to be of type "string"';
    {
      source_cidr_block: converted,
    }
  ),
  withTrafficDirection(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_direction" expected to be of type "string"';
    {
      traffic_direction: converted,
    }
  ),
  withTrafficMirrorFilterId(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_mirror_filter_id" expected to be of type "string"';
    {
      traffic_mirror_filter_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  destination_port_range:: {
    local block = self,
    new():: (
      {}
    ),
    withFromPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    withToPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
      {
        to_port: converted,
      }
    ),
  },
  source_port_range:: {
    local block = self,
    new():: (
      {}
    ),
    withFromPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    withToPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
      {
        to_port: converted,
      }
    ),
  },
  withDestinationPortRange(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_port_range: value,
    }
  ),
  withSourcePortRange(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_port_range: value,
    }
  ),
  withDestinationPortRangeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_port_range+: converted,
    }
  ),
  withSourcePortRangeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_port_range+: converted,
    }
  ),
}
