{
  local block = self,
  new(terraformName, name, realmType):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_realm",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["id", "is_default", "name", "realm_type"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
    + block.withRealmType(realmType)
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
