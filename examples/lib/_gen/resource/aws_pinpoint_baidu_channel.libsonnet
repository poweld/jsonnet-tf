{
  local block = self,
  new(terraformName, apiKey, applicationId, secretKey):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pinpoint_baidu_channel",
          type:: "resource",
          attributes:: ["api_key", "application_id", "enabled", "id", "region", "secret_key"],
        },
      },
    }
    + block.withApiKey(apiKey)
    + block.withApplicationId(applicationId)
    + block.withSecretKey(secretKey)
  ),
  withApiKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key" expected to be of type "string"';
    {
      api_key: converted,
    }
  ),
  withApplicationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  withSecretKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_key" expected to be of type "string"';
    {
      secret_key: converted,
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
