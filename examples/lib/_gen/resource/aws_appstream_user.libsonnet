{
  local block = self,
  new(terraformName, authenticationType, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appstream_user",
          type:: "resource",
          attributes:: ["arn", "authentication_type", "created_time", "enabled", "first_name", "id", "last_name", "region", "send_email_notification", "user_name"],
        },
      },
    }
    + block.withAuthenticationType(authenticationType)
    + block.withUserName(userName)
  ),
  withAuthenticationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
    {
      authentication_type: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withFirstName(value):: (
    local converted = value;
    assert std.isString(converted) : '"first_name" expected to be of type "string"';
    {
      first_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLastName(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_name" expected to be of type "string"';
    {
      last_name: converted,
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
  withSendEmailNotification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_notification" expected to be of type "bool"';
    {
      send_email_notification: converted,
    }
  ),
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
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
