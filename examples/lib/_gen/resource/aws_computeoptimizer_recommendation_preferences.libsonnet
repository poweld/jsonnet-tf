{
  local block = self,
  new(terraformName, resourceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_computeoptimizer_recommendation_preferences",
          type:: "resource",
          attributes:: ["enhanced_infrastructure_metrics", "id", "inferred_workload_types", "look_back_period", "region", "resource_type", "savings_estimation_mode"],
        },
      },
    }
    + block.withResourceType(resourceType)
  ),
  withEnhancedInfrastructureMetrics(value):: (
    local converted = value;
    assert std.isString(converted) : '"enhanced_infrastructure_metrics" expected to be of type "string"';
    {
      enhanced_infrastructure_metrics: converted,
    }
  ),
  withInferredWorkloadTypes(value):: (
    local converted = value;
    assert std.isString(converted) : '"inferred_workload_types" expected to be of type "string"';
    {
      inferred_workload_types: converted,
    }
  ),
  withLookBackPeriod(value):: (
    local converted = value;
    assert std.isString(converted) : '"look_back_period" expected to be of type "string"';
    {
      look_back_period: converted,
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
  withResourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  withSavingsEstimationMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"savings_estimation_mode" expected to be of type "string"';
    {
      savings_estimation_mode: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  external_metrics_preference:: {
    local block = self,
    new(source):: (
      {}
      + block.withSource(source)
    ),
    withSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
      }
    ),
  },
  preferred_resource:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withExcludeList(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_list" expected to be of type "set"';
      {
        exclude_list: converted,
      }
    ),
    withExcludeListMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_list" expected to be of type "set"';
      {
        exclude_list+: converted,
      }
    ),
    withIncludeList(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_list" expected to be of type "set"';
      {
        include_list: converted,
      }
    ),
    withIncludeListMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_list" expected to be of type "set"';
      {
        include_list+: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  scope:: {
    local block = self,
    new(name, value):: (
      {}
      + block.withName(name)
      + block.withValue(value)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  utilization_preference:: {
    local block = self,
    new(metricName):: (
      {}
      + block.withMetricName(metricName)
    ),
    withMetricName(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_name" expected to be of type "string"';
      {
        metric_name: converted,
      }
    ),
    metric_parameters:: {
      local block = self,
      new(headroom):: (
        {}
        + block.withHeadroom(headroom)
      ),
      withHeadroom(value):: (
        local converted = value;
        assert std.isString(converted) : '"headroom" expected to be of type "string"';
        {
          headroom: converted,
        }
      ),
      withThreshold(value):: (
        local converted = value;
        assert std.isString(converted) : '"threshold" expected to be of type "string"';
        {
          threshold: converted,
        }
      ),
    },
    withMetricParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_parameters: value,
      }
    ),
    withMetricParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_parameters+: converted,
      }
    ),
  },
  withExternalMetricsPreference(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_metrics_preference: value,
    }
  ),
  withPreferredResource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      preferred_resource: value,
    }
  ),
  withScope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope: value,
    }
  ),
  withUtilizationPreference(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      utilization_preference: value,
    }
  ),
  withExternalMetricsPreferenceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_metrics_preference+: converted,
    }
  ),
  withPreferredResourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      preferred_resource+: converted,
    }
  ),
  withScopeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope+: converted,
    }
  ),
  withUtilizationPreferenceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      utilization_preference+: converted,
    }
  ),
}
