{
  local block = self,
  new(terraformName, identity, notificationType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ses_identity_notification_topic",
          type:: "resource",
          attributes:: ["id", "identity", "include_original_headers", "notification_type", "region", "topic_arn"],
        },
      },
    }
    + block.withIdentity(identity)
    + block.withNotificationType(notificationType)
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
  withIncludeOriginalHeaders(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_original_headers" expected to be of type "bool"';
    {
      include_original_headers: converted,
    }
  ),
  withNotificationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_type" expected to be of type "string"';
    {
      notification_type: converted,
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
  withTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
    {
      topic_arn: converted,
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
