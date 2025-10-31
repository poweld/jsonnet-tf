{
  local block = self,
  new(terraformName, quotaCode, serviceCode, value):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicequotas_template",
          type:: "resource",
          attributes:: ["aws_region", "global_quota", "id", "quota_code", "quota_name", "region", "service_code", "service_name", "unit", "value"],
        },
      },
    }
    + block.withQuotaCode(quotaCode)
    + block.withServiceCode(serviceCode)
    + block.withValue(value)
  ),
  withAwsRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_region" expected to be of type "string"';
    {
      aws_region: converted,
    }
  ),
  withQuotaCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"quota_code" expected to be of type "string"';
    {
      quota_code: converted,
    }
  ),
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
