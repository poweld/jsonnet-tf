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
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
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
    local converted = value;
    {
      domains: value,
    }
  ),
  withSettings(value):: (
    local converted = value;
    {
      settings: value,
    }
  ),
}
