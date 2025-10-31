{
  local block = self,
  new(terraformName, groupName, optInStatus):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_availability_zone_group",
          type:: "resource",
          attributes:: ["group_name", "id", "opt_in_status", "region"],
        },
      },
    }
    + block.withGroupName(groupName)
    + block.withOptInStatus(optInStatus)
  ),
  withGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withOptInStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"opt_in_status" expected to be of type "string"';
    {
      opt_in_status: converted,
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
