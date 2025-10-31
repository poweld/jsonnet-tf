{
  local block = self,
  new(terraformName, connectionArn, httpMethod, invocationEndpoint, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_event_api_destination",
          type:: "resource",
          attributes:: ["arn", "connection_arn", "description", "http_method", "id", "invocation_endpoint", "invocation_rate_limit_per_second", "name", "region"],
        },
      },
    }
    + block.withConnectionArn(connectionArn)
    + block.withHttpMethod(httpMethod)
    + block.withInvocationEndpoint(invocationEndpoint)
    + block.withName(name)
  ),
  withConnectionArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_arn" expected to be of type "string"';
    {
      connection_arn: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withHttpMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_method" expected to be of type "string"';
    {
      http_method: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInvocationEndpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"invocation_endpoint" expected to be of type "string"';
    {
      invocation_endpoint: converted,
    }
  ),
  withInvocationRateLimitPerSecond(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"invocation_rate_limit_per_second" expected to be of type "number"';
    {
      invocation_rate_limit_per_second: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
