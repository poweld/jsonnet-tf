{
  local block = self,
  new(terraformName, content):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_resource_policy",
          type:: "resource",
          attributes:: ["arn", "content", "id", "tags", "tags_all"],
        },
      },
    }
    + block.withContent(content)
  ),
  withContent(value):: (
    local converted = value;
    assert std.isString(converted) : '"content" expected to be of type "string"';
    {
      content: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
