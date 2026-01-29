{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_org_metadata",
          type:: "data",
          attributes:: ["id", "pipeline"],
        },
      },
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  domains:: {
    local block = self,

    new():: (
      {}
    ),
  },
  settings:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withDomains(value):: (
    {
      domains: value,
    }
  ),
  withSettings(value):: (
    {
      settings: value,
    }
  ),
}
