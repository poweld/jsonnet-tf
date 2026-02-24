{
  local block = self,

  new(terraformName, warningThreshold):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_rate_limit_warning_threshold_percentage",
          type:: "resource",
          attributes:: ["id", "warning_threshold"],
        },
      },
    }
    + block.withWarningThreshold(warningThreshold)
  ),

  "#withWarningThreshold":: "The threshold value (percentage) of a rate limit that, when exceeded, triggers a warning notification. By default, this value is 90 for Workforce orgs and 60 for CIAM orgs.",
  withWarningThreshold(value):: (
    assert std.isNumber(value) : '"warning_threshold" expected to be of type "number"';

    {
      warning_threshold: value,
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
