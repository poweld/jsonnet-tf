{
  local block = self,
  new(terraformName, readinessCheckName, resourceSetName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53recoveryreadiness_readiness_check",
          type:: "resource",
          attributes:: ["arn", "id", "readiness_check_name", "resource_set_name", "tags", "tags_all"],
        },
      },
    }
    + block.withReadinessCheckName(readinessCheckName)
    + block.withResourceSetName(resourceSetName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withReadinessCheckName(value):: (
    local converted = value;
    assert std.isString(converted) : '"readiness_check_name" expected to be of type "string"';
    {
      readiness_check_name: converted,
    }
  ),
  withResourceSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set_name" expected to be of type "string"';
    {
      resource_set_name: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
