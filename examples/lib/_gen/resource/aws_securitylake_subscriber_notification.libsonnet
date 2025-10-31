{
  local block = self,
  new(terraformName, subscriberId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securitylake_subscriber_notification",
          type:: "resource",
          attributes:: ["endpoint_id", "id", "region", "subscriber_endpoint", "subscriber_id"],
        },
      },
    }
    + block.withSubscriberId(subscriberId)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSubscriberId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscriber_id" expected to be of type "string"';
    {
      subscriber_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    https_notification_configuration:: {
      local block = self,
      new(endpoint, targetRoleArn):: (
        {}
        + block.withEndpoint(endpoint)
        + block.withTargetRoleArn(targetRoleArn)
      ),
      withAuthorizationApiKeyName(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorization_api_key_name" expected to be of type "string"';
        {
          authorization_api_key_name: converted,
        }
      ),
      withAuthorizationApiKeyValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorization_api_key_value" expected to be of type "string"';
        {
          authorization_api_key_value: converted,
        }
      ),
      withEndpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint" expected to be of type "string"';
        {
          endpoint: converted,
        }
      ),
      withHttpMethod(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_method" expected to be of type "string"';
        {
          http_method: converted,
        }
      ),
      withTargetRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_role_arn" expected to be of type "string"';
        {
          target_role_arn: converted,
        }
      ),
    },
    sqs_notification_configuration:: {
      local block = self,
      new():: (
        {}
      ),
    },
    withHttpsNotificationConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        https_notification_configuration: value,
      }
    ),
    withSqsNotificationConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_notification_configuration: value,
      }
    ),
    withHttpsNotificationConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        https_notification_configuration+: converted,
      }
    ),
    withSqsNotificationConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_notification_configuration+: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
