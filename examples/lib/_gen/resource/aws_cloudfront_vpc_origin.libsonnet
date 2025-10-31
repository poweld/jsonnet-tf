{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_vpc_origin",
          type:: "resource",
          attributes:: ["arn", "etag", "id", "tags", "tags_all"],
        },
      },
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  vpc_origin_endpoint_config:: {
    local block = self,
    new(arn, httpPort, httpsPort, name, originProtocolPolicy):: (
      {}
      + block.withArn(arn)
      + block.withHttpPort(httpPort)
      + block.withHttpsPort(httpsPort)
      + block.withName(name)
      + block.withOriginProtocolPolicy(originProtocolPolicy)
    ),
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    withHttpPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"http_port" expected to be of type "number"';
      {
        http_port: converted,
      }
    ),
    withHttpsPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"https_port" expected to be of type "number"';
      {
        https_port: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withOriginProtocolPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_protocol_policy" expected to be of type "string"';
      {
        origin_protocol_policy: converted,
      }
    ),
    origin_ssl_protocols:: {
      local block = self,
      new(items, quantity):: (
        {}
        + block.withItems(items)
        + block.withQuantity(quantity)
      ),
      withItems(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items: converted,
        }
      ),
      withItemsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items+: converted,
        }
      ),
      withQuantity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"quantity" expected to be of type "number"';
        {
          quantity: converted,
        }
      ),
    },
    withOriginSslProtocols(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        origin_ssl_protocols: value,
      }
    ),
    withOriginSslProtocolsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        origin_ssl_protocols+: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpcOriginEndpointConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_origin_endpoint_config: value,
    }
  ),
  withVpcOriginEndpointConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_origin_endpoint_config+: converted,
    }
  ),
}
