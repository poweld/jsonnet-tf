{
  local block = self,
  new(terraformName, amount, resourceArn, usageType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshiftserverless_usage_limit",
          type:: "resource",
          attributes:: ["amount", "arn", "breach_action", "id", "period", "region", "resource_arn", "usage_type"],
        },
      },
    }
    + block.withAmount(amount)
    + block.withResourceArn(resourceArn)
    + block.withUsageType(usageType)
  ),
  withAmount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"amount" expected to be of type "number"';
    {
      amount: converted,
    }
  ),
  withBreachAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"breach_action" expected to be of type "string"';
    {
      breach_action: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPeriod(value):: (
    local converted = value;
    assert std.isString(converted) : '"period" expected to be of type "string"';
    {
      period: converted,
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
  withUsageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_type" expected to be of type "string"';
    {
      usage_type: converted,
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
