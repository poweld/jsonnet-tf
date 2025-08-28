{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_realm",
          type:: "data",
          attributes:: ["id", "is_default", "name", "realm_type"],
        },
      },
    }
  ),
  "#withId":: "The id of the Okta Realm.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The name of the Okta Realm.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withRealmType":: "The realm type. Valid values: `PARTNER` and `DEFAULT`",
  withRealmType(value):: (
    local converted = value;
    assert std.isString(converted) : '"realm_type" expected to be of type "string"';
    {
      realm_type: converted,
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
