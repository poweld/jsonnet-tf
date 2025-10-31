{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_rest_api",
          type:: "resource",
          attributes:: ["api_key_source", "arn", "binary_media_types", "body", "created_date", "description", "disable_execute_api_endpoint", "execution_arn", "fail_on_warnings", "id", "minimum_compression_size", "name", "parameters", "policy", "put_rest_api_mode", "region", "root_resource_id", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withApiKeySource(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key_source" expected to be of type "string"';
    {
      api_key_source: converted,
    }
  ),
  withBinaryMediaTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"binary_media_types" expected to be of type "list"';
    {
      binary_media_types: converted,
    }
  ),
  withBinaryMediaTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"binary_media_types" expected to be of type "list"';
    {
      binary_media_types+: converted,
    }
  ),
  withBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
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
  withMinimumCompressionSize(value):: (
    local converted = value;
    assert std.isString(converted) : '"minimum_compression_size" expected to be of type "string"';
    {
      minimum_compression_size: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
    }
  ),
  withPutRestApiMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"put_rest_api_mode" expected to be of type "string"';
    {
      put_rest_api_mode: converted,
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
  endpoint_configuration:: {
    local block = self,
    new(types):: (
      {}
      + block.withTypes(types)
    ),
    withIpAddressType(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    withTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"types" expected to be of type "list"';
      {
        types: converted,
      }
    ),
    withTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"types" expected to be of type "list"';
      {
        types+: converted,
      }
    ),
    withVpcEndpointIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_endpoint_ids" expected to be of type "set"';
      {
        vpc_endpoint_ids: converted,
      }
    ),
    withVpcEndpointIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_endpoint_ids" expected to be of type "set"';
      {
        vpc_endpoint_ids+: converted,
      }
    ),
  },
  withEndpointConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration: value,
    }
  ),
  withEndpointConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration+: converted,
    }
  ),
}
