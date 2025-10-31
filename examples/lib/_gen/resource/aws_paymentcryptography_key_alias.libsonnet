{
  local block = self,
  new(terraformName, aliasName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_paymentcryptography_key_alias",
          type:: "resource",
          attributes:: ["alias_name", "id", "key_arn", "region"],
        },
      },
    }
    + block.withAliasName(aliasName)
  ),
  withAliasName(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias_name" expected to be of type "string"';
    {
      alias_name: converted,
    }
  ),
  withKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_arn" expected to be of type "string"';
    {
      key_arn: converted,
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
