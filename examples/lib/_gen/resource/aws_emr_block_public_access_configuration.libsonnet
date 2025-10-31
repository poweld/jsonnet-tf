{
  local block = self,
  new(terraformName, blockPublicSecurityGroupRules):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emr_block_public_access_configuration",
          type:: "resource",
          attributes:: ["block_public_security_group_rules", "id", "region"],
        },
      },
    }
    + block.withBlockPublicSecurityGroupRules(blockPublicSecurityGroupRules)
  ),
  withBlockPublicSecurityGroupRules(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_security_group_rules" expected to be of type "bool"';
    {
      block_public_security_group_rules: converted,
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
  permitted_public_security_group_rule_range:: {
    local block = self,
    new(maxRange, minRange):: (
      {}
      + block.withMaxRange(maxRange)
      + block.withMinRange(minRange)
    ),
    withMaxRange(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_range" expected to be of type "number"';
      {
        max_range: converted,
      }
    ),
    withMinRange(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_range" expected to be of type "number"';
      {
        min_range: converted,
      }
    ),
  },
  withPermittedPublicSecurityGroupRuleRange(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permitted_public_security_group_rule_range: value,
    }
  ),
  withPermittedPublicSecurityGroupRuleRangeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permitted_public_security_group_rule_range+: converted,
    }
  ),
}
