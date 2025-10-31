{
  local block = self,
  new(terraformName, keyId, keyType, usagePlanId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_usage_plan_key",
          type:: "resource",
          attributes:: ["id", "key_id", "key_type", "name", "region", "usage_plan_id", "value"],
        },
      },
    }
    + block.withKeyId(keyId)
    + block.withKeyType(keyType)
    + block.withUsagePlanId(usagePlanId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  withKeyType(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_type" expected to be of type "string"';
    {
      key_type: converted,
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
  withUsagePlanId(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_plan_id" expected to be of type "string"';
    {
      usage_plan_id: converted,
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
