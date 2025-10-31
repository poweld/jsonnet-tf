{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_autoscalingplans_scaling_plan",
          type:: "resource",
          attributes:: ["id", "name", "region", "scaling_plan_version"],
        },
      },
    }
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  application_source:: {
    local block = self,
    new():: (
      {}
    ),
    withCloudformationStackArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudformation_stack_arn" expected to be of type "string"';
      {
        cloudformation_stack_arn: converted,
      }
    ),
    tag_filter:: {
      local block = self,
      new(key):: (
        {}
        + block.withKey(key)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    withTagFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_filter: value,
      }
    ),
    withTagFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_filter+: converted,
      }
    ),
  },
  scaling_instruction:: {
    local block = self,
    new(maxCapacity, minCapacity, resourceId, scalableDimension, serviceNamespace):: (
      {}
      + block.withMaxCapacity(maxCapacity)
      + block.withMinCapacity(minCapacity)
      + block.withResourceId(resourceId)
      + block.withScalableDimension(scalableDimension)
      + block.withServiceNamespace(serviceNamespace)
    ),
    withDisableDynamicScaling(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_dynamic_scaling" expected to be of type "bool"';
      {
        disable_dynamic_scaling: converted,
      }
    ),
    withMaxCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
      {
        max_capacity: converted,
      }
    ),
    withMinCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_capacity" expected to be of type "number"';
      {
        min_capacity: converted,
      }
    ),
    withPredictiveScalingMaxCapacityBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"predictive_scaling_max_capacity_behavior" expected to be of type "string"';
      {
        predictive_scaling_max_capacity_behavior: converted,
      }
    ),
    withPredictiveScalingMaxCapacityBuffer(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"predictive_scaling_max_capacity_buffer" expected to be of type "number"';
      {
        predictive_scaling_max_capacity_buffer: converted,
      }
    ),
    withPredictiveScalingMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"predictive_scaling_mode" expected to be of type "string"';
      {
        predictive_scaling_mode: converted,
      }
    ),
    withResourceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_id" expected to be of type "string"';
      {
        resource_id: converted,
      }
    ),
    withScalableDimension(value):: (
      local converted = value;
      assert std.isString(converted) : '"scalable_dimension" expected to be of type "string"';
      {
        scalable_dimension: converted,
      }
    ),
    withScalingPolicyUpdateBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"scaling_policy_update_behavior" expected to be of type "string"';
      {
        scaling_policy_update_behavior: converted,
      }
    ),
    withScheduledActionBufferTime(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scheduled_action_buffer_time" expected to be of type "number"';
      {
        scheduled_action_buffer_time: converted,
      }
    ),
    withServiceNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_namespace" expected to be of type "string"';
      {
        service_namespace: converted,
      }
    ),
    customized_load_metric_specification:: {
      local block = self,
      new(metricName, namespace, statistic):: (
        {}
        + block.withMetricName(metricName)
        + block.withNamespace(namespace)
        + block.withStatistic(statistic)
      ),
      withDimensions(value):: (
        local converted = value;
        assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
        {
          dimensions: converted,
        }
      ),
      withMetricName(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_name" expected to be of type "string"';
        {
          metric_name: converted,
        }
      ),
      withNamespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
      withStatistic(value):: (
        local converted = value;
        assert std.isString(converted) : '"statistic" expected to be of type "string"';
        {
          statistic: converted,
        }
      ),
      withUnit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
    },
    predefined_load_metric_specification:: {
      local block = self,
      new(predefinedLoadMetricType):: (
        {}
        + block.withPredefinedLoadMetricType(predefinedLoadMetricType)
      ),
      withPredefinedLoadMetricType(value):: (
        local converted = value;
        assert std.isString(converted) : '"predefined_load_metric_type" expected to be of type "string"';
        {
          predefined_load_metric_type: converted,
        }
      ),
      withResourceLabel(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_label" expected to be of type "string"';
        {
          resource_label: converted,
        }
      ),
    },
    target_tracking_configuration:: {
      local block = self,
      new(targetValue):: (
        {}
        + block.withTargetValue(targetValue)
      ),
      withDisableScaleIn(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"disable_scale_in" expected to be of type "bool"';
        {
          disable_scale_in: converted,
        }
      ),
      withEstimatedInstanceWarmup(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"estimated_instance_warmup" expected to be of type "number"';
        {
          estimated_instance_warmup: converted,
        }
      ),
      withScaleInCooldown(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"scale_in_cooldown" expected to be of type "number"';
        {
          scale_in_cooldown: converted,
        }
      ),
      withScaleOutCooldown(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"scale_out_cooldown" expected to be of type "number"';
        {
          scale_out_cooldown: converted,
        }
      ),
      withTargetValue(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"target_value" expected to be of type "number"';
        {
          target_value: converted,
        }
      ),
      customized_scaling_metric_specification:: {
        local block = self,
        new(metricName, namespace, statistic):: (
          {}
          + block.withMetricName(metricName)
          + block.withNamespace(namespace)
          + block.withStatistic(statistic)
        ),
        withDimensions(value):: (
          local converted = value;
          assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
          {
            dimensions: converted,
          }
        ),
        withMetricName(value):: (
          local converted = value;
          assert std.isString(converted) : '"metric_name" expected to be of type "string"';
          {
            metric_name: converted,
          }
        ),
        withNamespace(value):: (
          local converted = value;
          assert std.isString(converted) : '"namespace" expected to be of type "string"';
          {
            namespace: converted,
          }
        ),
        withStatistic(value):: (
          local converted = value;
          assert std.isString(converted) : '"statistic" expected to be of type "string"';
          {
            statistic: converted,
          }
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
      },
      predefined_scaling_metric_specification:: {
        local block = self,
        new(predefinedScalingMetricType):: (
          {}
          + block.withPredefinedScalingMetricType(predefinedScalingMetricType)
        ),
        withPredefinedScalingMetricType(value):: (
          local converted = value;
          assert std.isString(converted) : '"predefined_scaling_metric_type" expected to be of type "string"';
          {
            predefined_scaling_metric_type: converted,
          }
        ),
        withResourceLabel(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_label" expected to be of type "string"';
          {
            resource_label: converted,
          }
        ),
      },
      withCustomizedScalingMetricSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_scaling_metric_specification: value,
        }
      ),
      withPredefinedScalingMetricSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_scaling_metric_specification: value,
        }
      ),
      withCustomizedScalingMetricSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_scaling_metric_specification+: converted,
        }
      ),
      withPredefinedScalingMetricSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_scaling_metric_specification+: converted,
        }
      ),
    },
    withCustomizedLoadMetricSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customized_load_metric_specification: value,
      }
    ),
    withPredefinedLoadMetricSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_load_metric_specification: value,
      }
    ),
    withTargetTrackingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_configuration: value,
      }
    ),
    withCustomizedLoadMetricSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customized_load_metric_specification+: converted,
      }
    ),
    withPredefinedLoadMetricSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_load_metric_specification+: converted,
      }
    ),
    withTargetTrackingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_configuration+: converted,
      }
    ),
  },
  withApplicationSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_source: value,
    }
  ),
  withScalingInstruction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_instruction: value,
    }
  ),
  withApplicationSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_source+: converted,
    }
  ),
  withScalingInstructionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_instruction+: converted,
    }
  ),
}
