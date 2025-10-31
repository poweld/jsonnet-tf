{
  local block = self,
  new(terraformName, aggregation, pattern, protectionGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_shield_protection_group",
          type:: "resource",
          attributes:: ["aggregation", "id", "members", "pattern", "protection_group_arn", "protection_group_id", "resource_type", "tags", "tags_all"],
        },
      },
    }
    + block.withAggregation(aggregation)
    + block.withPattern(pattern)
    + block.withProtectionGroupId(protectionGroupId)
  ),
  withAggregation(value):: (
    local converted = value;
    assert std.isString(converted) : '"aggregation" expected to be of type "string"';
    {
      aggregation: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMembers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"members" expected to be of type "list"';
    {
      members: converted,
    }
  ),
  withMembersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"members" expected to be of type "list"';
    {
      members+: converted,
    }
  ),
  withPattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"pattern" expected to be of type "string"';
    {
      pattern: converted,
    }
  ),
  withProtectionGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"protection_group_id" expected to be of type "string"';
    {
      protection_group_id: converted,
    }
  ),
  withResourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
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
}
