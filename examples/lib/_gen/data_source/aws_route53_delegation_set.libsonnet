{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_delegation_set",
          type:: "data",
          attributes:: ["arn", "caller_reference", "id", "name_servers"],
        },
      },
    }
    + block.withId(id)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
