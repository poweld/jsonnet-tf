{
  local block = self,
  new(terraformName, scope):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_wafv2_regex_pattern_set",
          type:: "resource",
          attributes:: ["arn", "description", "id", "lock_token", "name", "name_prefix", "region", "scope", "tags", "tags_all"],
        },
      },
    }
    + block.withScope(scope)
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
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  withScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
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
  regular_expression:: {
    local block = self,
    new(regexString):: (
      {}
      + block.withRegexString(regexString)
    ),
    withRegexString(value):: (
      local converted = value;
      assert std.isString(converted) : '"regex_string" expected to be of type "string"';
      {
        regex_string: converted,
      }
    ),
  },
  withRegularExpression(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regular_expression: value,
    }
  ),
  withRegularExpressionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regular_expression+: converted,
    }
  ),
}
