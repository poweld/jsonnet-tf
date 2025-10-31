{
  local block = self,
  new(terraformName, applicationId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pinpoint_sms_channel",
          type:: "resource",
          attributes:: ["application_id", "enabled", "id", "promotional_messages_per_second", "region", "sender_id", "short_code", "transactional_messages_per_second"],
        },
      },
    }
    + block.withApplicationId(applicationId)
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
  withSenderId(value):: (
    local converted = value;
    assert std.isString(converted) : '"sender_id" expected to be of type "string"';
    {
      sender_id: converted,
    }
  ),
  withShortCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"short_code" expected to be of type "string"';
    {
      short_code: converted,
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
