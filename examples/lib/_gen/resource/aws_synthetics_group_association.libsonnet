{
  local block = self,
  new(terraformName, canaryArn, groupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_synthetics_group_association",
          type:: "resource",
          attributes:: ["canary_arn", "group_arn", "group_id", "group_name", "id", "region"],
        },
      },
    }
    + block.withCanaryArn(canaryArn)
    + block.withGroupName(groupName)
  ),
  withCanaryArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"canary_arn" expected to be of type "string"';
    {
      canary_arn: converted,
    }
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
