{
  local block = self,
  new(terraformName, eventConfigurations):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_event_configurations",
          type:: "resource",
          attributes:: ["event_configurations", "id", "region"],
        },
      },
    }
    + block.withEventConfigurations(eventConfigurations)
  ),
  withEventConfigurations(value):: (
    local converted = value;
    assert std.isObject(converted) : '"event_configurations" expected to be of type "map"';
    {
      event_configurations: converted,
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
}
