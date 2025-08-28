{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_user_profile_mapping_source",
          type:: "data",
          attributes:: ["id", "name", "type"],
        },
      },
    }
    + block.withTerraformName(terraformName)
  ),
}
