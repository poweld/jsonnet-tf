{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_shield_protection",
          type:: "data",
          attributes:: ["id", "name", "protection_arn", "protection_id", "resource_arn"],
        },
      },
    }
  ),
  withProtectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"protection_id" expected to be of type "string"';
    {
      protection_id: converted,
    }
  ),
  withResourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
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
