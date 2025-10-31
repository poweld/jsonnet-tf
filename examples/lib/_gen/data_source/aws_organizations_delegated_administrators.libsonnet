{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_delegated_administrators",
          type:: "data",
          attributes:: ["delegated_administrators", "id", "service_principal"],
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
  withServicePrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_principal" expected to be of type "string"';
    {
      service_principal: converted,
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
