{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_user_profile_mapping_source",
        type:: "data",
        attributes:: ["id", "name", "type"],
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
