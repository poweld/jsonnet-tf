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
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withRealmType":: "The realm type. Valid values: `PARTNER` and `DEFAULT`",
  withRealmType(value):: (
    assert std.isString(value) : '"realm_type" expected to be of type "string"';

    {
      realm_type: value,
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
