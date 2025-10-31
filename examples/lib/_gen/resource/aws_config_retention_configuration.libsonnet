{
  local block = self,
  new(terraformName, retentionPeriodInDays):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_config_retention_configuration",
          type:: "resource",
          attributes:: ["id", "name", "region", "retention_period_in_days"],
        },
      },
    }
    + block.withRetentionPeriodInDays(retentionPeriodInDays)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withRetentionPeriodInDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period_in_days" expected to be of type "number"';
    {
      retention_period_in_days: converted,
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
