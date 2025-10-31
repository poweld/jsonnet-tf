{
  local block = self,
  new(terraformName, family):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_parameter_group",
          type:: "resource",
          attributes:: ["arn", "description", "family", "id", "name", "name_prefix", "region", "skip_destroy", "tags", "tags_all"],
        },
      },
    }
    + block.withFamily(family)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFamily(value):: (
    local converted = value;
    assert std.isString(converted) : '"family" expected to be of type "string"';
    {
      family: converted,
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
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
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
  parameter:: {
    local block = self,
    new(name, value):: (
      {}
      + block.withName(name)
      + block.withValue(value)
    ),
    withApplyMethod(value):: (
      local converted = value;
      assert std.isString(converted) : '"apply_method" expected to be of type "string"';
      {
        apply_method: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withParameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter: value,
    }
  ),
  withParameterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter+: converted,
    }
  ),
}
