{
  local block = self,
  new(terraformName, filter, targetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_policies_for_target",
          type:: "data",
          attributes:: ["filter", "id", "ids", "target_id"],
        },
      },
    }
    + block.withFilter(filter)
    + block.withTargetId(targetId)
  ),
  withFilter(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter" expected to be of type "string"';
    {
      filter: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTargetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_id" expected to be of type "string"';
    {
      target_id: converted,
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
