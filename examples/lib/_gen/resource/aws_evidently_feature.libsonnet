{
  local block = self,
  new(terraformName, name, project):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_evidently_feature",
          type:: "resource",
          attributes:: ["arn", "created_time", "default_variation", "description", "entity_overrides", "evaluation_rules", "evaluation_strategy", "id", "last_updated_time", "name", "project", "region", "status", "tags", "tags_all", "value_type"],
        },
      },
    }
    + block.withName(name)
    + block.withProject(project)
  ),
  withDefaultVariation(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_variation" expected to be of type "string"';
    {
      default_variation: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEntityOverrides(value):: (
    local converted = value;
    assert std.isObject(converted) : '"entity_overrides" expected to be of type "map"';
    {
      entity_overrides: converted,
    }
  ),
  withEvaluationStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"evaluation_strategy" expected to be of type "string"';
    {
      evaluation_strategy: converted,
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
  withProject(value):: (
    local converted = value;
    assert std.isString(converted) : '"project" expected to be of type "string"';
    {
      project: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  variations:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    value:: {
      local block = self,
      new():: (
        {}
      ),
      withBoolValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"bool_value" expected to be of type "string"';
        {
          bool_value: converted,
        }
      ),
      withDoubleValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"double_value" expected to be of type "string"';
        {
          double_value: converted,
        }
      ),
      withLongValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"long_value" expected to be of type "string"';
        {
          long_value: converted,
        }
      ),
      withStringValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"string_value" expected to be of type "string"';
        {
          string_value: converted,
        }
      ),
    },
    withValue(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value: value,
      }
    ),
    withValueMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value+: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVariations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variations: value,
    }
  ),
  withVariationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variations+: converted,
    }
  ),
}
