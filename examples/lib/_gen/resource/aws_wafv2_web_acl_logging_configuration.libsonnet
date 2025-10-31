{
  local block = self,
  new(terraformName, logDestinationConfigs, resourceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_wafv2_web_acl_logging_configuration",
          type:: "resource",
          attributes:: ["id", "log_destination_configs", "region", "resource_arn"],
        },
      },
    }
    + block.withLogDestinationConfigs(logDestinationConfigs)
    + block.withResourceArn(resourceArn)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLogDestinationConfigs":: "AWS Kinesis Firehose Delivery Stream ARNs",
  withLogDestinationConfigs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_destination_configs" expected to be of type "set"';
    {
      log_destination_configs: converted,
    }
  ),
  "#withLogDestinationConfigsMixin":: "AWS Kinesis Firehose Delivery Stream ARNs",
  withLogDestinationConfigsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_destination_configs" expected to be of type "set"';
    {
      log_destination_configs+: converted,
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
  "#withResourceArn":: "AWS WebACL ARN",
  withResourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  logging_filter:: {
    local block = self,
    new(defaultBehavior):: (
      {}
      + block.withDefaultBehavior(defaultBehavior)
    ),
    withDefaultBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_behavior" expected to be of type "string"';
      {
        default_behavior: converted,
      }
    ),
    filter:: {
      local block = self,
      new(behavior, requirement):: (
        {}
        + block.withBehavior(behavior)
        + block.withRequirement(requirement)
      ),
      withBehavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"behavior" expected to be of type "string"';
        {
          behavior: converted,
        }
      ),
      withRequirement(value):: (
        local converted = value;
        assert std.isString(converted) : '"requirement" expected to be of type "string"';
        {
          requirement: converted,
        }
      ),
      condition:: {
        local block = self,
        new():: (
          {}
        ),
        action_condition:: {
          local block = self,
          new(action):: (
            {}
            + block.withAction(action)
          ),
          withAction(value):: (
            local converted = value;
            assert std.isString(converted) : '"action" expected to be of type "string"';
            {
              action: converted,
            }
          ),
        },
        label_name_condition:: {
          local block = self,
          new(labelName):: (
            {}
            + block.withLabelName(labelName)
          ),
          withLabelName(value):: (
            local converted = value;
            assert std.isString(converted) : '"label_name" expected to be of type "string"';
            {
              label_name: converted,
            }
          ),
        },
        withActionCondition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            action_condition: value,
          }
        ),
        withLabelNameCondition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            label_name_condition: value,
          }
        ),
        withActionConditionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            action_condition+: converted,
          }
        ),
        withLabelNameConditionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            label_name_condition+: converted,
          }
        ),
      },
      withCondition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition: value,
        }
      ),
      withConditionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition+: converted,
        }
      ),
    },
    withFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    withFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
  },
  redacted_fields:: {
    local block = self,
    new():: (
      {}
    ),
    method:: {
      local block = self,
      new():: (
        {}
      ),
    },
    query_string:: {
      local block = self,
      new():: (
        {}
      ),
    },
    single_header:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    uri_path:: {
      local block = self,
      new():: (
        {}
      ),
    },
    withMethod(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        method: value,
      }
    ),
    withQueryString(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string: value,
      }
    ),
    withSingleHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_header: value,
      }
    ),
    withUriPath(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        uri_path: value,
      }
    ),
    withMethodMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        method+: converted,
      }
    ),
    withQueryStringMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string+: converted,
      }
    ),
    withSingleHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_header+: converted,
      }
    ),
    withUriPathMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        uri_path+: converted,
      }
    ),
  },
  withLoggingFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_filter: value,
    }
  ),
  withRedactedFields(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redacted_fields: value,
    }
  ),
  withLoggingFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_filter+: converted,
    }
  ),
  withRedactedFieldsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redacted_fields+: converted,
    }
  ),
}
