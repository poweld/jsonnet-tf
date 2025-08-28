{
  local block = self,
  new(terraformName, name, realmType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_realm",
          type:: "resource",
          attributes:: ["id", "is_default", "name", "realm_type"],
        },
      },
    }
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
      terraform+:: {
        name:: value,
      },
    },
  },
}
