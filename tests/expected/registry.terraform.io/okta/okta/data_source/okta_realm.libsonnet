{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_realm",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["id", "is_default", "name", "realm_type"],
      },
    }
    + block.withTerraformName(terraformName)
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
      terraformName:: value,
    },
  },
}
