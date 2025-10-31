{
  local block = self,
  new(terraformName, status, tagKey):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ce_cost_allocation_tag",
          type:: "resource",
          attributes:: ["id", "status", "tag_key", "type"],
        },
      },
    }
    + block.withStatus(status)
    + block.withTagKey(tagKey)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withTagKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_key" expected to be of type "string"';
    {
      tag_key: converted,
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
