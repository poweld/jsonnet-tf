{
  local block = self,
  new(terraformName, applicationId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pinpoint_gcm_channel",
          type:: "resource",
          attributes:: ["api_key", "application_id", "default_authentication_method", "enabled", "id", "region", "service_json"],
        },
      },
    }
    + block.withApplicationId(applicationId)
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
  withDefaultAuthenticationMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_authentication_method" expected to be of type "string"';
    {
      default_authentication_method: converted,
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
  withServiceJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_json" expected to be of type "string"';
    {
      service_json: converted,
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
