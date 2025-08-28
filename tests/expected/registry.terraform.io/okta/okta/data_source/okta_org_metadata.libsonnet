{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_org_metadata",
        type:: "data",
        attributes:: ["id", "pipeline"],
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
