{
  local block = self,
  new(terraformName, configurationSetName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sesv2_configuration_set",
          type:: "resource",
          attributes:: ["arn", "configuration_set_name", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withConfigurationSetName(configurationSetName)
  ),
  withConfigurationSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  delivery_options:: {
    local block = self,
    new():: (
      {}
    ),
    withMaxDeliverySeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_delivery_seconds" expected to be of type "number"';
      {
        max_delivery_seconds: converted,
      }
    ),
    withSendingPoolName(value):: (
      local converted = value;
      assert std.isString(converted) : '"sending_pool_name" expected to be of type "string"';
      {
        sending_pool_name: converted,
      }
    ),
    withTlsPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_policy" expected to be of type "string"';
      {
        tls_policy: converted,
      }
    ),
  },
  reputation_options:: {
    local block = self,
    new():: (
      {}
    ),
    withReputationMetricsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"reputation_metrics_enabled" expected to be of type "bool"';
      {
        reputation_metrics_enabled: converted,
      }
    ),
  },
  sending_options:: {
    local block = self,
    new():: (
      {}
    ),
    withSendingEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"sending_enabled" expected to be of type "bool"';
      {
        sending_enabled: converted,
      }
    ),
  },
  suppression_options:: {
    local block = self,
    new():: (
      {}
    ),
    withSuppressedReasons(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"suppressed_reasons" expected to be of type "list"';
      {
        suppressed_reasons: converted,
      }
    ),
    withSuppressedReasonsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"suppressed_reasons" expected to be of type "list"';
      {
        suppressed_reasons+: converted,
      }
    ),
  },
  tracking_options:: {
    local block = self,
    new(customRedirectDomain):: (
      {}
      + block.withCustomRedirectDomain(customRedirectDomain)
    ),
    withCustomRedirectDomain(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_redirect_domain" expected to be of type "string"';
      {
        custom_redirect_domain: converted,
      }
    ),
    withHttpsPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"https_policy" expected to be of type "string"';
      {
        https_policy: converted,
      }
    ),
  },
  vdm_options:: {
    local block = self,
    new():: (
      {}
    ),
    dashboard_options:: {
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
    guardian_options:: {
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
    withDashboardOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dashboard_options: value,
      }
    ),
    withGuardianOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        guardian_options: value,
      }
    ),
    withDashboardOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dashboard_options+: converted,
      }
    ),
    withGuardianOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        guardian_options+: converted,
      }
    ),
  },
  withDeliveryOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_options: value,
    }
  ),
  withReputationOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reputation_options: value,
    }
  ),
  withSendingOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sending_options: value,
    }
  ),
  withSuppressionOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      suppression_options: value,
    }
  ),
  withTrackingOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracking_options: value,
    }
  ),
  withVdmOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vdm_options: value,
    }
  ),
  withDeliveryOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_options+: converted,
    }
  ),
  withReputationOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reputation_options+: converted,
    }
  ),
  withSendingOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sending_options+: converted,
    }
  ),
  withSuppressionOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      suppression_options+: converted,
    }
  ),
  withTrackingOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracking_options+: converted,
    }
  ),
  withVdmOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vdm_options+: converted,
    }
  ),
}
