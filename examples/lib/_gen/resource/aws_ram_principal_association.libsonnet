{
  local block = self,
  new(terraformName, principal, resourceShareArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ram_principal_association",
          type:: "resource",
          attributes:: ["id", "principal", "region", "resource_share_arn"],
        },
      },
    }
    + block.withPrincipal(principal)
    + block.withResourceShareArn(resourceShareArn)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
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
  withResourceShareArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_share_arn" expected to be of type "string"';
    {
      resource_share_arn: converted,
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
