{
  local block = self,
  new(terraformName, name, resourceId, scalableDimension, serviceNamespace):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appautoscaling_policy",
          type:: "resource",
          attributes:: ["alarm_arns", "arn", "id", "name", "policy_type", "region", "resource_id", "scalable_dimension", "service_namespace"],
        },
      },
    }
    + block.withName(name)
    + block.withResourceId(resourceId)
    + block.withScalableDimension(scalableDimension)
    + block.withServiceNamespace(serviceNamespace)
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
  withPolicyType(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_type" expected to be of type "string"';
    {
      policy_type: converted,
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
  withServiceNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_namespace" expected to be of type "string"';
    {
      service_namespace: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  predictive_scaling_policy_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withMaxCapacityBreachBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_capacity_breach_behavior" expected to be of type "string"';
      {
        max_capacity_breach_behavior: converted,
      }
    ),
    withMaxCapacityBuffer(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity_buffer" expected to be of type "number"';
      {
        max_capacity_buffer: converted,
      }
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    withSchedulingBufferTime(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scheduling_buffer_time" expected to be of type "number"';
      {
        scheduling_buffer_time: converted,
      }
    ),
    metric_specification:: {
      local block = self,
      new(targetValue):: (
        {}
        + block.withTargetValue(targetValue)
      ),
      withTargetValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_value" expected to be of type "string"';
        {
          target_value: converted,
        }
      ),
      customized_capacity_metric_specification:: {
        local block = self,
        new():: (
          {}
        ),
        metric_data_query:: {
          local block = self,
          new(id):: (
            {}
            + block.withId(id)
          ),
          withExpression(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression" expected to be of type "string"';
            {
              expression: converted,
            }
          ),
          withId(value):: (
            local converted = value;
            assert std.isString(converted) : '"id" expected to be of type "string"';
            {
              id: converted,
            }
          ),
          withLabel(value):: (
            local converted = value;
            assert std.isString(converted) : '"label" expected to be of type "string"';
            {
              label: converted,
            }
          ),
          withReturnData(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
            {
              return_data: converted,
            }
          ),
          metric_stat:: {
            local block = self,
            new(stat):: (
              {}
              + block.withStat(stat)
            ),
            withStat(value):: (
              local converted = value;
              assert std.isString(converted) : '"stat" expected to be of type "string"';
              {
                stat: converted,
              }
            ),
            withUnit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            metric:: {
              local block = self,
              new():: (
                {}
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
              dimension:: {
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
              withDimension(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimension: value,
                }
              ),
              withDimensionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimension+: converted,
                }
              ),
            },
            withMetric(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric: value,
              }
            ),
            withMetricMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric+: converted,
              }
            ),
          },
          withMetricStat(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat: value,
            }
          ),
          withMetricStatMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat+: converted,
            }
          ),
        },
        withMetricDataQuery(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_query: value,
          }
        ),
        withMetricDataQueryMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_query+: converted,
          }
        ),
      },
      customized_load_metric_specification:: {
        local block = self,
        new():: (
          {}
        ),
        metric_data_query:: {
          local block = self,
          new(id):: (
            {}
            + block.withId(id)
          ),
          withExpression(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression" expected to be of type "string"';
            {
              expression: converted,
            }
          ),
          withId(value):: (
            local converted = value;
            assert std.isString(converted) : '"id" expected to be of type "string"';
            {
              id: converted,
            }
          ),
          withLabel(value):: (
            local converted = value;
            assert std.isString(converted) : '"label" expected to be of type "string"';
            {
              label: converted,
            }
          ),
          withReturnData(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
            {
              return_data: converted,
            }
          ),
          metric_stat:: {
            local block = self,
            new(stat):: (
              {}
              + block.withStat(stat)
            ),
            withStat(value):: (
              local converted = value;
              assert std.isString(converted) : '"stat" expected to be of type "string"';
              {
                stat: converted,
              }
            ),
            withUnit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            metric:: {
              local block = self,
              new():: (
                {}
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
              dimension:: {
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
              withDimension(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimension: value,
                }
              ),
              withDimensionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimension+: converted,
                }
              ),
            },
            withMetric(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric: value,
              }
            ),
            withMetricMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric+: converted,
              }
            ),
          },
          withMetricStat(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat: value,
            }
          ),
          withMetricStatMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat+: converted,
            }
          ),
        },
        withMetricDataQuery(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_query: value,
          }
        ),
        withMetricDataQueryMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_query+: converted,
          }
        ),
      },
      customized_scaling_metric_specification:: {
        local block = self,
        new():: (
          {}
        ),
        metric_data_query:: {
          local block = self,
          new(id):: (
            {}
            + block.withId(id)
          ),
          withExpression(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression" expected to be of type "string"';
            {
              expression: converted,
            }
          ),
          withId(value):: (
            local converted = value;
            assert std.isString(converted) : '"id" expected to be of type "string"';
            {
              id: converted,
            }
          ),
          withLabel(value):: (
            local converted = value;
            assert std.isString(converted) : '"label" expected to be of type "string"';
            {
              label: converted,
            }
          ),
          withReturnData(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
            {
              return_data: converted,
            }
          ),
          metric_stat:: {
            local block = self,
            new(stat):: (
              {}
              + block.withStat(stat)
            ),
            withStat(value):: (
              local converted = value;
              assert std.isString(converted) : '"stat" expected to be of type "string"';
              {
                stat: converted,
              }
            ),
            withUnit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            metric:: {
              local block = self,
              new():: (
                {}
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
              dimension:: {
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
              withDimension(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimension: value,
                }
              ),
              withDimensionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimension+: converted,
                }
              ),
            },
            withMetric(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric: value,
              }
            ),
            withMetricMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric+: converted,
              }
            ),
          },
          withMetricStat(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat: value,
            }
          ),
          withMetricStatMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat+: converted,
            }
          ),
        },
        withMetricDataQuery(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_query: value,
          }
        ),
        withMetricDataQueryMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_query+: converted,
          }
        ),
      },
      predefined_load_metric_specification:: {
        local block = self,
        new(predefinedMetricType):: (
          {}
          + block.withPredefinedMetricType(predefinedMetricType)
        ),
        withPredefinedMetricType(value):: (
          local converted = value;
          assert std.isString(converted) : '"predefined_metric_type" expected to be of type "string"';
          {
            predefined_metric_type: converted,
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
      predefined_metric_pair_specification:: {
        local block = self,
        new(predefinedMetricType):: (
          {}
          + block.withPredefinedMetricType(predefinedMetricType)
        ),
        withPredefinedMetricType(value):: (
          local converted = value;
          assert std.isString(converted) : '"predefined_metric_type" expected to be of type "string"';
          {
            predefined_metric_type: converted,
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
      predefined_scaling_metric_specification:: {
        local block = self,
        new(predefinedMetricType):: (
          {}
          + block.withPredefinedMetricType(predefinedMetricType)
        ),
        withPredefinedMetricType(value):: (
          local converted = value;
          assert std.isString(converted) : '"predefined_metric_type" expected to be of type "string"';
          {
            predefined_metric_type: converted,
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
      withCustomizedCapacityMetricSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_capacity_metric_specification: value,
        }
      ),
      withCustomizedLoadMetricSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_load_metric_specification: value,
        }
      ),
      withCustomizedScalingMetricSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_scaling_metric_specification: value,
        }
      ),
      withPredefinedLoadMetricSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_load_metric_specification: value,
        }
      ),
      withPredefinedMetricPairSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_metric_pair_specification: value,
        }
      ),
      withPredefinedScalingMetricSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_scaling_metric_specification: value,
        }
      ),
      withCustomizedCapacityMetricSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_capacity_metric_specification+: converted,
        }
      ),
      withCustomizedLoadMetricSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_load_metric_specification+: converted,
        }
      ),
      withCustomizedScalingMetricSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_scaling_metric_specification+: converted,
        }
      ),
      withPredefinedLoadMetricSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_load_metric_specification+: converted,
        }
      ),
      withPredefinedMetricPairSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_metric_pair_specification+: converted,
        }
      ),
      withPredefinedScalingMetricSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_scaling_metric_specification+: converted,
        }
      ),
    },
    withMetricSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_specification: value,
      }
    ),
    withMetricSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_specification+: converted,
      }
    ),
  },
  step_scaling_policy_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAdjustmentType(value):: (
      local converted = value;
      assert std.isString(converted) : '"adjustment_type" expected to be of type "string"';
      {
        adjustment_type: converted,
      }
    ),
    withCooldown(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cooldown" expected to be of type "number"';
      {
        cooldown: converted,
      }
    ),
    withMetricAggregationType(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_aggregation_type" expected to be of type "string"';
      {
        metric_aggregation_type: converted,
      }
    ),
    withMinAdjustmentMagnitude(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_adjustment_magnitude" expected to be of type "number"';
      {
        min_adjustment_magnitude: converted,
      }
    ),
    step_adjustment:: {
      local block = self,
      new(scalingAdjustment):: (
        {}
        + block.withScalingAdjustment(scalingAdjustment)
      ),
      withMetricIntervalLowerBound(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_interval_lower_bound" expected to be of type "string"';
        {
          metric_interval_lower_bound: converted,
        }
      ),
      withMetricIntervalUpperBound(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_interval_upper_bound" expected to be of type "string"';
        {
          metric_interval_upper_bound: converted,
        }
      ),
      withScalingAdjustment(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"scaling_adjustment" expected to be of type "number"';
        {
          scaling_adjustment: converted,
        }
      ),
    },
    withStepAdjustment(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_adjustment: value,
      }
    ),
    withStepAdjustmentMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_adjustment+: converted,
      }
    ),
  },
  target_tracking_scaling_policy_configuration:: {
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
    customized_metric_specification:: {
      local block = self,
      new():: (
        {}
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
      dimensions:: {
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
      metrics:: {
        local block = self,
        new(id):: (
          {}
          + block.withId(id)
        ),
        withExpression(value):: (
          local converted = value;
          assert std.isString(converted) : '"expression" expected to be of type "string"';
          {
            expression: converted,
          }
        ),
        withId(value):: (
          local converted = value;
          assert std.isString(converted) : '"id" expected to be of type "string"';
          {
            id: converted,
          }
        ),
        withLabel(value):: (
          local converted = value;
          assert std.isString(converted) : '"label" expected to be of type "string"';
          {
            label: converted,
          }
        ),
        withReturnData(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
          {
            return_data: converted,
          }
        ),
        metric_stat:: {
          local block = self,
          new(stat):: (
            {}
            + block.withStat(stat)
          ),
          withStat(value):: (
            local converted = value;
            assert std.isString(converted) : '"stat" expected to be of type "string"';
            {
              stat: converted,
            }
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          metric:: {
            local block = self,
            new(metricName, namespace):: (
              {}
              + block.withMetricName(metricName)
              + block.withNamespace(namespace)
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
            dimensions:: {
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
            withDimensions(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dimensions: value,
              }
            ),
            withDimensionsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dimensions+: converted,
              }
            ),
          },
          withMetric(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric: value,
            }
          ),
          withMetricMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric+: converted,
            }
          ),
        },
        withMetricStat(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_stat: value,
          }
        ),
        withMetricStatMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_stat+: converted,
          }
        ),
      },
      withDimensions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimensions: value,
        }
      ),
      withMetrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metrics: value,
        }
      ),
      withDimensionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimensions+: converted,
        }
      ),
      withMetricsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metrics+: converted,
        }
      ),
    },
    predefined_metric_specification:: {
      local block = self,
      new(predefinedMetricType):: (
        {}
        + block.withPredefinedMetricType(predefinedMetricType)
      ),
      withPredefinedMetricType(value):: (
        local converted = value;
        assert std.isString(converted) : '"predefined_metric_type" expected to be of type "string"';
        {
          predefined_metric_type: converted,
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
    withCustomizedMetricSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customized_metric_specification: value,
      }
    ),
    withPredefinedMetricSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_metric_specification: value,
      }
    ),
    withCustomizedMetricSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customized_metric_specification+: converted,
      }
    ),
    withPredefinedMetricSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_metric_specification+: converted,
      }
    ),
  },
  withPredictiveScalingPolicyConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predictive_scaling_policy_configuration: value,
    }
  ),
  withStepScalingPolicyConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      step_scaling_policy_configuration: value,
    }
  ),
  withTargetTrackingScalingPolicyConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_tracking_scaling_policy_configuration: value,
    }
  ),
  withPredictiveScalingPolicyConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predictive_scaling_policy_configuration+: converted,
    }
  ),
  withStepScalingPolicyConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      step_scaling_policy_configuration+: converted,
    }
  ),
  withTargetTrackingScalingPolicyConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_tracking_scaling_policy_configuration+: converted,
    }
  ),
}
