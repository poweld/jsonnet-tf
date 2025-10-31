{
  local block = self,
  new(terraformName, apiCachingBehavior, apiId, ttl, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appsync_api_cache",
          type:: "resource",
          attributes:: ["api_caching_behavior", "api_id", "at_rest_encryption_enabled", "id", "region", "transit_encryption_enabled", "ttl", "type"],
        },
      },
    }
    + block.withApiCachingBehavior(apiCachingBehavior)
    + block.withApiId(apiId)
    + block.withTtl(ttl)
    + block.withType(type)
  ),
  withApiCachingBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_caching_behavior" expected to be of type "string"';
    {
      api_caching_behavior: converted,
    }
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withAtRestEncryptionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"at_rest_encryption_enabled" expected to be of type "bool"';
    {
      at_rest_encryption_enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTransitEncryptionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_encryption_enabled" expected to be of type "bool"';
    {
      transit_encryption_enabled: converted,
    }
  ),
  withTtl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ttl" expected to be of type "number"';
    {
      ttl: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
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
