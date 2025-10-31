{
  local block = self,
  new(terraformName, quotaCode, serviceCode, value):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicequotas_service_quota",
          type:: "resource",
          attributes:: ["adjustable", "arn", "default_value", "id", "quota_code", "quota_name", "region", "request_id", "request_status", "service_code", "service_name", "usage_metric", "value"],
        },
      },
    }
    + block.withQuotaCode(quotaCode)
    + block.withServiceCode(serviceCode)
    + block.withValue(value)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withQuotaCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"quota_code" expected to be of type "string"';
    {
      quota_code: converted,
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
  withServiceCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_code" expected to be of type "string"';
    {
      service_code: converted,
    }
  ),
  withValue(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"value" expected to be of type "number"';
    {
      value: converted,
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
