{
  local block = self,
  new(terraformName, resourceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_resource_tags",
          type:: "data",
          attributes:: ["id", "resource_id", "tags"],
        },
      },
    }
    + block.withResourceId(resourceId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withResourceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
