{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_user_profile_mapping_source",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["id", "name", "type"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
