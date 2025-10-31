{
  local block = self,
  new(terraformName, resourceTypeOptInPreference):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_region_settings",
          type:: "resource",
          attributes:: ["id", "region", "resource_type_management_preference", "resource_type_opt_in_preference"],
        },
      },
    }
    + block.withResourceTypeOptInPreference(resourceTypeOptInPreference)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withResourceTypeManagementPreference(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_type_management_preference" expected to be of type "map"';
    {
      resource_type_management_preference: converted,
    }
  ),
  withResourceTypeOptInPreference(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_type_opt_in_preference" expected to be of type "map"';
    {
      resource_type_opt_in_preference: converted,
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
