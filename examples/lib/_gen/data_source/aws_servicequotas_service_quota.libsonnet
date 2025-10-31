{
  local block = self,
  new(terraformName, serviceCode):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicequotas_service_quota",
          type:: "data",
          attributes:: ["adjustable", "arn", "default_value", "global_quota", "id", "quota_code", "quota_name", "region", "service_code", "service_name", "usage_metric", "value"],
        },
      },
    }
    + block.withServiceCode(serviceCode)
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
  withQuotaName(value):: (
    local converted = value;
    assert std.isString(converted) : '"quota_name" expected to be of type "string"';
    {
      quota_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
