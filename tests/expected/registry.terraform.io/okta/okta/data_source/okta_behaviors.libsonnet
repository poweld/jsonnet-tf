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
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withQ":: "Searches the name property of behaviors for matching value",
  withQ(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}
