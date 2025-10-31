{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_gamelift_game_session_queue",
          type:: "resource",
          attributes:: ["arn", "custom_event_data", "destinations", "id", "name", "notification_target", "region", "tags", "tags_all", "timeout_in_seconds"],
        },
      },
    }
    + block.withName(name)
  ),
  withCustomEventData(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_event_data" expected to be of type "string"';
    {
      custom_event_data: converted,
    }
  ),
  withDestinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"destinations" expected to be of type "list"';
    {
      destinations: converted,
    }
  ),
  withDestinationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"destinations" expected to be of type "list"';
    {
      destinations+: converted,
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
  withNotificationTarget(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_target" expected to be of type "string"';
    {
      notification_target: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTimeoutInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
    {
      timeout_in_seconds: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  player_latency_policy:: {
    local block = self,
    new(maximumIndividualPlayerLatencyMilliseconds):: (
      {}
      + block.withMaximumIndividualPlayerLatencyMilliseconds(maximumIndividualPlayerLatencyMilliseconds)
    ),
    withMaximumIndividualPlayerLatencyMilliseconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_individual_player_latency_milliseconds" expected to be of type "number"';
      {
        maximum_individual_player_latency_milliseconds: converted,
      }
    ),
    withPolicyDurationSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"policy_duration_seconds" expected to be of type "number"';
      {
        policy_duration_seconds: converted,
      }
    ),
  },
  withPlayerLatencyPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      player_latency_policy: value,
    }
  ),
  withPlayerLatencyPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      player_latency_policy+: converted,
    }
  ),
}
