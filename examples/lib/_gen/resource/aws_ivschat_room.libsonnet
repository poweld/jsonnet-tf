{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ivschat_room",
          type:: "resource",
          attributes:: ["arn", "id", "logging_configuration_identifiers", "maximum_message_length", "maximum_message_rate_per_second", "name", "region", "tags", "tags_all"],
        },
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLoggingConfigurationIdentifiers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"logging_configuration_identifiers" expected to be of type "list"';
    {
      logging_configuration_identifiers: converted,
    }
  ),
  withLoggingConfigurationIdentifiersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"logging_configuration_identifiers" expected to be of type "list"';
    {
      logging_configuration_identifiers+: converted,
    }
  ),
  withMaximumMessageLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_message_length" expected to be of type "number"';
    {
      maximum_message_length: converted,
    }
  ),
  withMaximumMessageRatePerSecond(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_message_rate_per_second" expected to be of type "number"';
    {
      maximum_message_rate_per_second: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  message_review_handler:: {
    local block = self,
    new():: (
      {}
    ),
    withFallbackResult(value):: (
      local converted = value;
      assert std.isString(converted) : '"fallback_result" expected to be of type "string"';
      {
        fallback_result: converted,
      }
    ),
    withUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withMessageReviewHandler(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      message_review_handler: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withMessageReviewHandlerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      message_review_handler+: converted,
    }
  ),
}
