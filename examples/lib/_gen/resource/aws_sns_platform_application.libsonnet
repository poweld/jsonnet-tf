{
  local block = self,
  new(terraformName, name, platform, platformCredential):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sns_platform_application",
          type:: "resource",
          attributes:: ["apple_platform_bundle_id", "apple_platform_team_id", "arn", "event_delivery_failure_topic_arn", "event_endpoint_created_topic_arn", "event_endpoint_deleted_topic_arn", "event_endpoint_updated_topic_arn", "failure_feedback_role_arn", "id", "name", "platform", "platform_credential", "platform_principal", "region", "success_feedback_role_arn", "success_feedback_sample_rate"],
        },
      },
    }
    + block.withName(name)
    + block.withPlatform(platform)
    + block.withPlatformCredential(platformCredential)
  ),
  withApplePlatformBundleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_platform_bundle_id" expected to be of type "string"';
    {
      apple_platform_bundle_id: converted,
    }
  ),
  withApplePlatformTeamId(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_platform_team_id" expected to be of type "string"';
    {
      apple_platform_team_id: converted,
    }
  ),
  withEventDeliveryFailureTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_delivery_failure_topic_arn" expected to be of type "string"';
    {
      event_delivery_failure_topic_arn: converted,
    }
  ),
  withEventEndpointCreatedTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_endpoint_created_topic_arn" expected to be of type "string"';
    {
      event_endpoint_created_topic_arn: converted,
    }
  ),
  withEventEndpointDeletedTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_endpoint_deleted_topic_arn" expected to be of type "string"';
    {
      event_endpoint_deleted_topic_arn: converted,
    }
  ),
  withEventEndpointUpdatedTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_endpoint_updated_topic_arn" expected to be of type "string"';
    {
      event_endpoint_updated_topic_arn: converted,
    }
  ),
  withFailureFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"failure_feedback_role_arn" expected to be of type "string"';
    {
      failure_feedback_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPlatform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
    }
  ),
  withPlatformCredential(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_credential" expected to be of type "string"';
    {
      platform_credential: converted,
    }
  ),
  withPlatformPrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_principal" expected to be of type "string"';
    {
      platform_principal: converted,
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
  withSuccessFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"success_feedback_role_arn" expected to be of type "string"';
    {
      success_feedback_role_arn: converted,
    }
  ),
  withSuccessFeedbackSampleRate(value):: (
    local converted = value;
    assert std.isString(converted) : '"success_feedback_sample_rate" expected to be of type "string"';
    {
      success_feedback_sample_rate: converted,
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
