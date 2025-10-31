{
  local block = self,
  new(terraformName, vdmEnabled):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sesv2_account_vdm_attributes",
          type:: "resource",
          attributes:: ["id", "region", "vdm_enabled"],
        },
      },
    }
    + block.withVdmEnabled(vdmEnabled)
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
  withVdmEnabled(value):: (
    local converted = value;
    assert std.isString(converted) : '"vdm_enabled" expected to be of type "string"';
    {
      vdm_enabled: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  dashboard_attributes:: {
    local block = self,
    new():: (
      {}
    ),
    withEngagementMetrics(value):: (
      local converted = value;
      assert std.isString(converted) : '"engagement_metrics" expected to be of type "string"';
      {
        engagement_metrics: converted,
      }
    ),
  },
  guardian_attributes:: {
    local block = self,
    new():: (
      {}
    ),
    withOptimizedSharedDelivery(value):: (
      local converted = value;
      assert std.isString(converted) : '"optimized_shared_delivery" expected to be of type "string"';
      {
        optimized_shared_delivery: converted,
      }
    ),
  },
  withDashboardAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dashboard_attributes: value,
    }
  ),
  withGuardianAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      guardian_attributes: value,
    }
  ),
  withDashboardAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dashboard_attributes+: converted,
    }
  ),
  withGuardianAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      guardian_attributes+: converted,
    }
  ),
}
