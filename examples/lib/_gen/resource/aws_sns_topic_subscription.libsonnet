{
  local block = self,
  new(terraformName, endpoint, protocol, topicArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sns_topic_subscription",
          type:: "resource",
          attributes:: ["arn", "confirmation_timeout_in_minutes", "confirmation_was_authenticated", "delivery_policy", "endpoint", "endpoint_auto_confirms", "filter_policy", "filter_policy_scope", "id", "owner_id", "pending_confirmation", "protocol", "raw_message_delivery", "redrive_policy", "region", "replay_policy", "subscription_role_arn", "topic_arn"],
        },
      },
    }
    + block.withEndpoint(endpoint)
    + block.withProtocol(protocol)
    + block.withTopicArn(topicArn)
  ),
  withConfirmationTimeoutInMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"confirmation_timeout_in_minutes" expected to be of type "number"';
    {
      confirmation_timeout_in_minutes: converted,
    }
  ),
  withDeliveryPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_policy" expected to be of type "string"';
    {
      delivery_policy: converted,
    }
  ),
  withEndpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  withEndpointAutoConfirms(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"endpoint_auto_confirms" expected to be of type "bool"';
    {
      endpoint_auto_confirms: converted,
    }
  ),
  withFilterPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_policy" expected to be of type "string"';
    {
      filter_policy: converted,
    }
  ),
  withFilterPolicyScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_policy_scope" expected to be of type "string"';
    {
      filter_policy_scope: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
    }
  ),
  withRawMessageDelivery(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"raw_message_delivery" expected to be of type "bool"';
    {
      raw_message_delivery: converted,
    }
  ),
  withRedrivePolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"redrive_policy" expected to be of type "string"';
    {
      redrive_policy: converted,
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
  withReplayPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"replay_policy" expected to be of type "string"';
    {
      replay_policy: converted,
    }
  ),
  withSubscriptionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscription_role_arn" expected to be of type "string"';
    {
      subscription_role_arn: converted,
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
