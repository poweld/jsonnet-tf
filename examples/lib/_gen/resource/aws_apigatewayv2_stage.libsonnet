{
  local block = self,
  new(terraformName, apiId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_stage",
          type:: "resource",
          attributes:: ["api_id", "arn", "auto_deploy", "client_certificate_id", "deployment_id", "description", "execution_arn", "id", "invoke_url", "name", "region", "stage_variables", "tags", "tags_all"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withName(name)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withAutoDeploy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_deploy" expected to be of type "bool"';
    {
      auto_deploy: converted,
    }
  ),
  withClientCertificateId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_certificate_id" expected to be of type "string"';
    {
      client_certificate_id: converted,
    }
  ),
  withDeploymentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_id" expected to be of type "string"';
    {
      deployment_id: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withStageVariables(value):: (
    local converted = value;
    assert std.isObject(converted) : '"stage_variables" expected to be of type "map"';
    {
      stage_variables: converted,
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
  access_log_settings:: {
    local block = self,
    new(destinationArn, format):: (
      {}
      + block.withDestinationArn(destinationArn)
      + block.withFormat(format)
    ),
    withDestinationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
      {
        destination_arn: converted,
      }
    ),
    withFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"format" expected to be of type "string"';
      {
        format: converted,
      }
    ),
  },
  default_route_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withDataTraceEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"data_trace_enabled" expected to be of type "bool"';
      {
        data_trace_enabled: converted,
      }
    ),
    withDetailedMetricsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"detailed_metrics_enabled" expected to be of type "bool"';
      {
        detailed_metrics_enabled: converted,
      }
    ),
    withLoggingLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"logging_level" expected to be of type "string"';
      {
        logging_level: converted,
      }
    ),
    withThrottlingBurstLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_burst_limit" expected to be of type "number"';
      {
        throttling_burst_limit: converted,
      }
    ),
    withThrottlingRateLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_rate_limit" expected to be of type "number"';
      {
        throttling_rate_limit: converted,
      }
    ),
  },
  route_settings:: {
    local block = self,
    new(routeKey):: (
      {}
      + block.withRouteKey(routeKey)
    ),
    withDataTraceEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"data_trace_enabled" expected to be of type "bool"';
      {
        data_trace_enabled: converted,
      }
    ),
    withDetailedMetricsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"detailed_metrics_enabled" expected to be of type "bool"';
      {
        detailed_metrics_enabled: converted,
      }
    ),
    withLoggingLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"logging_level" expected to be of type "string"';
      {
        logging_level: converted,
      }
    ),
    withRouteKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"route_key" expected to be of type "string"';
      {
        route_key: converted,
      }
    ),
    withThrottlingBurstLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_burst_limit" expected to be of type "number"';
      {
        throttling_burst_limit: converted,
      }
    ),
    withThrottlingRateLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_rate_limit" expected to be of type "number"';
      {
        throttling_rate_limit: converted,
      }
    ),
  },
  withAccessLogSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_log_settings: value,
    }
  ),
  withDefaultRouteSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_route_settings: value,
    }
  ),
  withRouteSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      route_settings: value,
    }
  ),
  withAccessLogSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_log_settings+: converted,
    }
  ),
  withDefaultRouteSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_route_settings+: converted,
    }
  ),
  withRouteSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      route_settings+: converted,
    }
  ),
}
