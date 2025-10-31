{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_delegation_set",
          type:: "resource",
          attributes:: ["arn", "id", "name_servers", "reference_name"],
        },
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withReferenceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"reference_name" expected to be of type "string"';
    {
      reference_name: converted,
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
