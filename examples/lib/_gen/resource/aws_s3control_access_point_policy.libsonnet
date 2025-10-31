{
  local block = self,
  new(terraformName, accessPointArn, policy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3control_access_point_policy",
          type:: "resource",
          attributes:: ["access_point_arn", "has_public_access_policy", "id", "policy", "region"],
        },
      },
    }
    + block.withAccessPointArn(accessPointArn)
    + block.withPolicy(policy)
  ),
  withAccessPointArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_point_arn" expected to be of type "string"';
    {
      access_point_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
