{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          object:: "okta_policy",
          type:: "data",
          attributes:: ["id", "name", "status", "type"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
    + block.withType(type)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of the policy",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withType":: "Policy type, see https://developer.okta.com/docs/reference/api/policy/#policy-object",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
