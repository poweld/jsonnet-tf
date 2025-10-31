{
  local block = self,
  new(terraformName, name, originAccessControlOriginType, signingBehavior, signingProtocol):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_origin_access_control",
          type:: "resource",
          attributes:: ["arn", "description", "etag", "id", "name", "origin_access_control_origin_type", "signing_behavior", "signing_protocol"],
        },
      },
    }
    + block.withName(name)
    + block.withOriginAccessControlOriginType(originAccessControlOriginType)
    + block.withSigningBehavior(signingBehavior)
    + block.withSigningProtocol(signingProtocol)
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
  withOriginAccessControlOriginType(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin_access_control_origin_type" expected to be of type "string"';
    {
      origin_access_control_origin_type: converted,
    }
  ),
  withSigningBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_behavior" expected to be of type "string"';
    {
      signing_behavior: converted,
    }
  ),
  withSigningProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_protocol" expected to be of type "string"';
    {
      signing_protocol: converted,
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
