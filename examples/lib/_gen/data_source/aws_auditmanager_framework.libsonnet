{
  local block = self,
  new(terraformName, frameworkType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_auditmanager_framework",
          type:: "data",
          attributes:: ["arn", "compliance_type", "control_sets", "description", "framework_type", "id", "name", "region", "tags"],
        },
      },
    }
    + block.withFrameworkType(frameworkType)
    + block.withName(name)
  ),
  withFrameworkType(value):: (
    local converted = value;
    assert std.isString(converted) : '"framework_type" expected to be of type "string"';
    {
      framework_type: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
