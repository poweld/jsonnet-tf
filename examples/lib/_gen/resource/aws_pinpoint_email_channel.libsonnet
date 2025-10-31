{
  local block = self,
  new(terraformName, applicationId, fromAddress, identity):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pinpoint_email_channel",
          type:: "resource",
          attributes:: ["application_id", "configuration_set", "enabled", "from_address", "id", "identity", "messages_per_second", "orchestration_sending_role_arn", "region", "role_arn"],
        },
      },
    }
    + block.withApplicationId(applicationId)
    + block.withFromAddress(fromAddress)
    + block.withIdentity(identity)
  ),
  withApplicationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  withConfigurationSet(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set" expected to be of type "string"';
    {
      configuration_set: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withFromAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"from_address" expected to be of type "string"';
    {
      from_address: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentity(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity" expected to be of type "string"';
    {
      identity: converted,
    }
  ),
  withOrchestrationSendingRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"orchestration_sending_role_arn" expected to be of type "string"';
    {
      orchestration_sending_role_arn: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
