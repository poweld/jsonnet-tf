{
  local block = self,
  new(terraformName, name, protocolType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_api",
          type:: "resource",
          attributes:: ["api_endpoint", "api_key_selection_expression", "arn", "body", "credentials_arn", "description", "disable_execute_api_endpoint", "execution_arn", "fail_on_warnings", "id", "ip_address_type", "name", "protocol_type", "region", "route_key", "route_selection_expression", "tags", "tags_all", "target", "version"],
        },
      },
    }
    + block.withName(name)
    + block.withProtocolType(protocolType)
  ),
  withApiKeySelectionExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key_selection_expression" expected to be of type "string"';
    {
      api_key_selection_expression: converted,
    }
  ),
  withBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
    }
  ),
  withCredentialsArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_arn" expected to be of type "string"';
    {
      credentials_arn: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDisableExecuteApiEndpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_execute_api_endpoint" expected to be of type "bool"';
    {
      disable_execute_api_endpoint: converted,
    }
  ),
  withFailOnWarnings(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fail_on_warnings" expected to be of type "bool"';
    {
      fail_on_warnings: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withProtocolType(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_type" expected to be of type "string"';
    {
      protocol_type: converted,
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
  withRouteKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_key" expected to be of type "string"';
    {
      route_key: converted,
    }
  ),
  withRouteSelectionExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_selection_expression" expected to be of type "string"';
    {
      route_selection_expression: converted,
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
  withTarget(value):: (
    local converted = value;
    assert std.isString(converted) : '"target" expected to be of type "string"';
    {
      target: converted,
    }
  ),
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cors_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowCredentials(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_credentials" expected to be of type "bool"';
      {
        allow_credentials: converted,
      }
    ),
    withAllowHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_headers" expected to be of type "set"';
      {
        allow_headers: converted,
      }
    ),
    withAllowHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_headers" expected to be of type "set"';
      {
        allow_headers+: converted,
      }
    ),
    withAllowMethods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_methods" expected to be of type "set"';
      {
        allow_methods: converted,
      }
    ),
    withAllowMethodsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_methods" expected to be of type "set"';
      {
        allow_methods+: converted,
      }
    ),
    withAllowOrigins(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_origins" expected to be of type "set"';
      {
        allow_origins: converted,
      }
    ),
    withAllowOriginsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_origins" expected to be of type "set"';
      {
        allow_origins+: converted,
      }
    ),
    withExposeHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"expose_headers" expected to be of type "set"';
      {
        expose_headers: converted,
      }
    ),
    withExposeHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"expose_headers" expected to be of type "set"';
      {
        expose_headers+: converted,
      }
    ),
    withMaxAge(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_age" expected to be of type "number"';
      {
        max_age: converted,
      }
    ),
  },
  withCorsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_configuration: value,
    }
  ),
  withCorsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_configuration+: converted,
    }
  ),
}
