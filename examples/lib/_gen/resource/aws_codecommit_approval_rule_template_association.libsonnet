{
  local block = self,
  new(terraformName, approvalRuleTemplateName, repositoryName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codecommit_approval_rule_template_association",
          type:: "resource",
          attributes:: ["approval_rule_template_name", "id", "region", "repository_name"],
        },
      },
    }
    + block.withApprovalRuleTemplateName(approvalRuleTemplateName)
    + block.withRepositoryName(repositoryName)
  ),
  withApprovalRuleTemplateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"approval_rule_template_name" expected to be of type "string"';
    {
      approval_rule_template_name: converted,
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
  withRepositoryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_name" expected to be of type "string"';
    {
      repository_name: converted,
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
