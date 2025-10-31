{
  local block = self,
  new(terraformName, thingGroupName, thingName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_thing_group_membership",
          type:: "resource",
          attributes:: ["id", "override_dynamic_group", "region", "thing_group_name", "thing_name"],
        },
      },
    }
    + block.withThingGroupName(thingGroupName)
    + block.withThingName(thingName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withOverrideDynamicGroup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"override_dynamic_group" expected to be of type "bool"';
    {
      override_dynamic_group: converted,
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
  withThingGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"thing_group_name" expected to be of type "string"';
    {
      thing_group_name: converted,
    }
  ),
  withThingName(value):: (
    local converted = value;
    assert std.isString(converted) : '"thing_name" expected to be of type "string"';
    {
      thing_name: converted,
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
