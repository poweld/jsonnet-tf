{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_org_support",
          type:: "resource",
          attributes:: ["expiration", "extend_by", "id", "status"],
        },
      },
    }
  ),

  "#withExtendBy":: "Number of days the support should be extended by",
  withExtendBy(value):: (
    assert std.isNumber(value) : '"extend_by" expected to be of type "number"';

    {
      extend_by: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
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
