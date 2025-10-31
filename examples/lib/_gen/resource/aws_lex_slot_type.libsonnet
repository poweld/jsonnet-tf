{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lex_slot_type",
          type:: "resource",
          attributes:: ["checksum", "create_version", "created_date", "description", "id", "last_updated_date", "name", "region", "value_selection_strategy", "version"],
        },
      },
    }
    + block.withName(name)
  ),
  withCreateVersion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"create_version" expected to be of type "bool"';
    {
      create_version: converted,
    }
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withValueSelectionStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"value_selection_strategy" expected to be of type "string"';
    {
      value_selection_strategy: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  enumeration_value:: {
    local block = self,
    new(value):: (
      {}
      + block.withValue(value)
    ),
    withSynonyms(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"synonyms" expected to be of type "set"';
      {
        synonyms: converted,
      }
    ),
    withSynonymsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"synonyms" expected to be of type "set"';
      {
        synonyms+: converted,
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
  withEnumerationValue(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enumeration_value: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withEnumerationValueMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enumeration_value+: converted,
    }
  ),
}
