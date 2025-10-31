{
  local block = self,
  new(terraformName, accountId, emailAddress, graphArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_detective_member",
          type:: "resource",
          attributes:: ["account_id", "administrator_id", "disable_email_notification", "disabled_reason", "email_address", "graph_arn", "id", "invited_time", "message", "region", "status", "updated_time", "volume_usage_in_bytes"],
        },
      },
    }
    + block.withAccountId(accountId)
    + block.withEmailAddress(emailAddress)
    + block.withGraphArn(graphArn)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withDisableEmailNotification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_email_notification" expected to be of type "bool"';
    {
      disable_email_notification: converted,
    }
  ),
  withEmailAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_address" expected to be of type "string"';
    {
      email_address: converted,
    }
  ),
  withGraphArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"graph_arn" expected to be of type "string"';
    {
      graph_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMessage(value):: (
    local converted = value;
    assert std.isString(converted) : '"message" expected to be of type "string"';
    {
      message: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
