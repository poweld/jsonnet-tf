{
  local block = self,
  new(terraformName, accessPolicy, destinationName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_destination_policy",
          type:: "resource",
          attributes:: ["access_policy", "destination_name", "force_update", "id", "region"],
        },
      },
    }
    + block.withAccessPolicy(accessPolicy)
    + block.withDestinationName(destinationName)
  ),
  withAccessPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_policy" expected to be of type "string"';
    {
      access_policy: converted,
    }
  ),
  withDestinationName(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_name" expected to be of type "string"';
    {
      destination_name: converted,
    }
  ),
  withForceUpdate(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_update" expected to be of type "bool"';
    {
      force_update: converted,
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
