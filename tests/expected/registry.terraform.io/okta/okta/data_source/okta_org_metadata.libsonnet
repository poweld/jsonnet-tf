{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_org_metadata",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["id", "pipeline"],
      },
    }
  ),
  domains:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_org_metadata",
          terraformType:: "data",
          terraformPrefix:: "data",
          terraformName:: name,
          terraformAttributes:: ["alternate", "organization"],
        },
      }
    ),
  },
  settings:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_org_metadata",
          terraformType:: "data",
          terraformPrefix:: "data",
          terraformName:: name,
          terraformAttributes:: ["analytics_collection_enabled", "bug_reporting_enabled", "om_enabled"],
        },
      }
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
