{
  local block = self,
  new(terraformName, authorizerFunctionArn, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_authorizer",
          type:: "resource",
          attributes:: ["arn", "authorizer_function_arn", "enable_caching_for_http", "id", "name", "region", "signing_disabled", "status", "tags", "tags_all", "token_key_name", "token_signing_public_keys"],
        },
      },
    }
    + block.withAuthorizerFunctionArn(authorizerFunctionArn)
    + block.withName(name)
  ),
  withAuthorizerFunctionArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_function_arn" expected to be of type "string"';
    {
      authorizer_function_arn: converted,
    }
  ),
  withEnableCachingForHttp(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_caching_for_http" expected to be of type "bool"';
    {
      enable_caching_for_http: converted,
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
  withSigningDisabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"signing_disabled" expected to be of type "bool"';
    {
      signing_disabled: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  withTokenKeyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_key_name" expected to be of type "string"';
    {
      token_key_name: converted,
    }
  ),
  withTokenSigningPublicKeys(value):: (
    local converted = value;
    assert std.isObject(converted) : '"token_signing_public_keys" expected to be of type "map"';
    {
      token_signing_public_keys: converted,
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
