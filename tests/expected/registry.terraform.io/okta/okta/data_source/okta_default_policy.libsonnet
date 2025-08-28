{
  local block = self,
  new(terraformName, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_default_policy",
          type:: "data",
          attributes:: ["id", "type"],
        },
      },
    }
    + block.withType(type)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withType":: "Policy type: OKTA_SIGN_ON, PASSWORD, MFA_ENROLL, or IDP_DISCOVERY",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
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
