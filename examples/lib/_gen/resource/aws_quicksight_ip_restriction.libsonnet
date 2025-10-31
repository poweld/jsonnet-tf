{
  local block = self,
  new(terraformName, enabled):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_ip_restriction",
          type:: "resource",
          attributes:: ["aws_account_id", "enabled", "ip_restriction_rule_map", "region", "vpc_endpoint_id_restriction_rule_map", "vpc_id_restriction_rule_map"],
        },
      },
    }
    + block.withEnabled(enabled)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withIpRestrictionRuleMap(value):: (
    local converted = value;
    assert std.isObject(converted) : '"ip_restriction_rule_map" expected to be of type "map"';
    {
      ip_restriction_rule_map: converted,
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
  withVpcEndpointIdRestrictionRuleMap(value):: (
    local converted = value;
    assert std.isObject(converted) : '"vpc_endpoint_id_restriction_rule_map" expected to be of type "map"';
    {
      vpc_endpoint_id_restriction_rule_map: converted,
    }
  ),
  withVpcIdRestrictionRuleMap(value):: (
    local converted = value;
    assert std.isObject(converted) : '"vpc_id_restriction_rule_map" expected to be of type "map"';
    {
      vpc_id_restriction_rule_map: converted,
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
