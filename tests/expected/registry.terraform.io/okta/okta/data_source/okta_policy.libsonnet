{
  local block = self,

  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy",
          type:: "data",
          attributes:: ["id", "name", "status", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Name of the policy",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withType":: "Policy type, see https://developer.okta.com/docs/reference/api/policy/#policy-object",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
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
