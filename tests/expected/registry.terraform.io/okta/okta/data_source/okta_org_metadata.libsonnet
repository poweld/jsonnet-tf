{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_org_metadata",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["id", "pipeline"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
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
