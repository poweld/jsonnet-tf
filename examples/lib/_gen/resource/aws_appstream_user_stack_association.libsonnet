{
  local block = self,
  new(terraformName, authenticationType, stackName, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appstream_user_stack_association",
          type:: "resource",
          attributes:: ["authentication_type", "id", "region", "send_email_notification", "stack_name", "user_name"],
        },
      },
    }
    + block.withAuthenticationType(authenticationType)
    + block.withStackName(stackName)
    + block.withUserName(userName)
  ),
  withAuthenticationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
    {
      authentication_type: converted,
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
  withSendEmailNotification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_notification" expected to be of type "bool"';
    {
      send_email_notification: converted,
    }
  ),
  withStackName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_name" expected to be of type "string"';
    {
      stack_name: converted,
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
