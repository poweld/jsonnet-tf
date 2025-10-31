{
  local block = self,
  new(terraformName, extensionArn, resourceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appconfig_extension_association",
          type:: "resource",
          attributes:: ["arn", "extension_arn", "extension_version", "id", "parameters", "region", "resource_arn"],
        },
      },
    }
    + block.withExtensionArn(extensionArn)
    + block.withResourceArn(resourceArn)
  ),
  withExtensionArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"extension_arn" expected to be of type "string"';
    {
      extension_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
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
