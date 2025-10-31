{
  local block = self,
  new(terraformName, autoscalingGroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_autoscaling_traffic_source_attachment",
          type:: "resource",
          attributes:: ["autoscaling_group_name", "id", "region"],
        },
      },
    }
    + block.withAutoscalingGroupName(autoscalingGroupName)
  ),
  withAutoscalingGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_group_name" expected to be of type "string"';
    {
      autoscaling_group_name: converted,
    }
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
  traffic_source:: {
    local block = self,
    new(identifier, type):: (
      {}
      + block.withIdentifier(identifier)
      + block.withType(type)
    ),
    withIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"identifier" expected to be of type "string"';
      {
        identifier: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTrafficSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_source: value,
    }
  ),
  withTrafficSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_source+: converted,
    }
  ),
}
