{
  local block = self,
  new(terraformName, aliasName, templateId, templateVersionNumber):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_template_alias",
          type:: "resource",
          attributes:: ["alias_name", "arn", "aws_account_id", "id", "region", "template_id", "template_version_number"],
        },
      },
    }
    + block.withAliasName(aliasName)
    + block.withTemplateId(templateId)
    + block.withTemplateVersionNumber(templateVersionNumber)
  ),
  withAliasName(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias_name" expected to be of type "string"';
    {
      alias_name: converted,
    }
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
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
  withTemplateId(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_id" expected to be of type "string"';
    {
      template_id: converted,
    }
  ),
  withTemplateVersionNumber(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"template_version_number" expected to be of type "number"';
    {
      template_version_number: converted,
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
