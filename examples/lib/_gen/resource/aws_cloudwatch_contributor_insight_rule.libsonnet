{
  local block = self,
  new(terraformName, ruleDefinition, ruleName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_contributor_insight_rule",
          type:: "resource",
          attributes:: ["region", "resource_arn", "rule_definition", "rule_name", "rule_state", "tags", "tags_all"],
        },
      },
    }
    + block.withRuleDefinition(ruleDefinition)
    + block.withRuleName(ruleName)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withRuleDefinition(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_definition" expected to be of type "string"';
    {
      rule_definition: converted,
    }
  ),
  withRuleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_name" expected to be of type "string"';
    {
      rule_name: converted,
    }
  ),
  withRuleState(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_state" expected to be of type "string"';
    {
      rule_state: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
