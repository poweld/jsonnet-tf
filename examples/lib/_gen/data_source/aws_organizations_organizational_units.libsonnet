{
  local block = self,
  new(terraformName, parentId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_organizational_units",
          type:: "data",
          attributes:: ["children", "id", "parent_id"],
        },
      },
    }
    + block.withParentId(parentId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withParentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_id" expected to be of type "string"';
    {
      parent_id: converted,
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
