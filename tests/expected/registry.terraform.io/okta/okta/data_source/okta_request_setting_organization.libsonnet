{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_request_setting_organization",
          type:: "data",
          attributes:: ["id", "long_time_past_provisioned", "provisioning_status", "subprocessors_acknowledged"],
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

  requestExperiences:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withRequestExperiences(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      request_experiences: converted,
    }
  ),
  withRequestExperiencesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      request_experiences+: converted,
    }
  ),
}
