{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_behaviors",
          type:: "data",
          attributes:: ["behaviors", "id", "q"],
        },
      },
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withQ":: "Searches the name property of behaviors for matching value",
  withQ(value):: (
    assert std.isString(value) : '"q" expected to be of type "string"';

    {
      q: value,
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
