{
  local block = self,
  new(terraformName, authorizationType, functionName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_function_url",
          type:: "resource",
          attributes:: ["authorization_type", "function_arn", "function_name", "function_url", "id", "invoke_mode", "qualifier", "region", "url_id"],
        },
      },
    }
    + block.withAuthorizationType(authorizationType)
    + block.withFunctionName(functionName)
  ),
  withAuthorizationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_type" expected to be of type "string"';
    {
      authorization_type: converted,
    }
  ),
  withFunctionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInvokeMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"invoke_mode" expected to be of type "string"';
    {
      invoke_mode: converted,
    }
  ),
  withQualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cors:: {
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
  },
  withCors(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCorsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors+: converted,
    }
  ),
}
