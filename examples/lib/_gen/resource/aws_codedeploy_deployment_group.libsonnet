{
  local block = self,
  new(terraformName, appName, deploymentGroupName, serviceRoleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codedeploy_deployment_group",
          type:: "resource",
          attributes:: ["app_name", "arn", "autoscaling_groups", "compute_platform", "deployment_config_name", "deployment_group_id", "deployment_group_name", "id", "outdated_instances_strategy", "region", "service_role_arn", "tags", "tags_all", "termination_hook_enabled"],
        },
      },
    }
    + block.withAppName(appName)
    + block.withDeploymentGroupName(deploymentGroupName)
    + block.withServiceRoleArn(serviceRoleArn)
  ),
  withAppName(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_name" expected to be of type "string"';
    {
      app_name: converted,
    }
  ),
  withAutoscalingGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"autoscaling_groups" expected to be of type "set"';
    {
      autoscaling_groups: converted,
    }
  ),
  withAutoscalingGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"autoscaling_groups" expected to be of type "set"';
    {
      autoscaling_groups+: converted,
    }
  ),
  withDeploymentConfigName(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_config_name" expected to be of type "string"';
    {
      deployment_config_name: converted,
    }
  ),
  withDeploymentGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_group_name" expected to be of type "string"';
    {
      deployment_group_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withOutdatedInstancesStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"outdated_instances_strategy" expected to be of type "string"';
    {
      outdated_instances_strategy: converted,
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
  withServiceRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role_arn" expected to be of type "string"';
    {
      service_role_arn: converted,
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
  withTerminationHookEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"termination_hook_enabled" expected to be of type "bool"';
    {
      termination_hook_enabled: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  alarm_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAlarms(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarms" expected to be of type "set"';
      {
        alarms: converted,
      }
    ),
    withAlarmsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarms" expected to be of type "set"';
      {
        alarms+: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withIgnorePollAlarmFailure(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ignore_poll_alarm_failure" expected to be of type "bool"';
      {
        ignore_poll_alarm_failure: converted,
      }
    ),
  },
  auto_rollback_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withEvents(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events: converted,
      }
    ),
    withEventsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events+: converted,
      }
    ),
  },
  blue_green_deployment_config:: {
    local block = self,
    new():: (
      {}
    ),
    deployment_ready_option:: {
      local block = self,
      new():: (
        {}
      ),
      withActionOnTimeout(value):: (
        local converted = value;
        assert std.isString(converted) : '"action_on_timeout" expected to be of type "string"';
        {
          action_on_timeout: converted,
        }
      ),
      withWaitTimeInMinutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"wait_time_in_minutes" expected to be of type "number"';
        {
          wait_time_in_minutes: converted,
        }
      ),
    },
    green_fleet_provisioning_option:: {
      local block = self,
      new():: (
        {}
      ),
      withAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
    },
    terminate_blue_instances_on_deployment_success:: {
      local block = self,
      new():: (
        {}
      ),
      withAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
      withTerminationWaitTimeInMinutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"termination_wait_time_in_minutes" expected to be of type "number"';
        {
          termination_wait_time_in_minutes: converted,
        }
      ),
    },
    withDeploymentReadyOption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        deployment_ready_option: value,
      }
    ),
    withGreenFleetProvisioningOption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        green_fleet_provisioning_option: value,
      }
    ),
    withTerminateBlueInstancesOnDeploymentSuccess(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        terminate_blue_instances_on_deployment_success: value,
      }
    ),
    withDeploymentReadyOptionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        deployment_ready_option+: converted,
      }
    ),
    withGreenFleetProvisioningOptionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        green_fleet_provisioning_option+: converted,
      }
    ),
    withTerminateBlueInstancesOnDeploymentSuccessMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        terminate_blue_instances_on_deployment_success+: converted,
      }
    ),
  },
  deployment_style:: {
    local block = self,
    new():: (
      {}
    ),
    withDeploymentOption(value):: (
      local converted = value;
      assert std.isString(converted) : '"deployment_option" expected to be of type "string"';
      {
        deployment_option: converted,
      }
    ),
    withDeploymentType(value):: (
      local converted = value;
      assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
      {
        deployment_type: converted,
      }
    ),
  },
  ec2_tag_filter:: {
    local block = self,
    new():: (
      {}
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  ec2_tag_set:: {
    local block = self,
    new():: (
      {}
    ),
    ec2_tag_filter:: {
      local block = self,
      new():: (
        {}
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
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
    withEc2TagFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_tag_filter: value,
      }
    ),
    withEc2TagFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_tag_filter+: converted,
      }
    ),
  },
  ecs_service:: {
    local block = self,
    new(clusterName, serviceName):: (
      {}
      + block.withClusterName(clusterName)
      + block.withServiceName(serviceName)
    ),
    withClusterName(value):: (
      local converted = value;
      assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
      {
        cluster_name: converted,
      }
    ),
    withServiceName(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_name" expected to be of type "string"';
      {
        service_name: converted,
      }
    ),
  },
  load_balancer_info:: {
    local block = self,
    new():: (
      {}
    ),
    elb_info:: {
      local block = self,
      new():: (
        {}
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    target_group_info:: {
      local block = self,
      new():: (
        {}
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    target_group_pair_info:: {
      local block = self,
      new():: (
        {}
      ),
      prod_traffic_route:: {
        local block = self,
        new(listenerArns):: (
          {}
          + block.withListenerArns(listenerArns)
        ),
        withListenerArns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener_arns" expected to be of type "set"';
          {
            listener_arns: converted,
          }
        ),
        withListenerArnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener_arns" expected to be of type "set"';
          {
            listener_arns+: converted,
          }
        ),
      },
      target_group:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
      },
      test_traffic_route:: {
        local block = self,
        new(listenerArns):: (
          {}
          + block.withListenerArns(listenerArns)
        ),
        withListenerArns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener_arns" expected to be of type "set"';
          {
            listener_arns: converted,
          }
        ),
        withListenerArnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener_arns" expected to be of type "set"';
          {
            listener_arns+: converted,
          }
        ),
      },
      withProdTrafficRoute(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          prod_traffic_route: value,
        }
      ),
      withTargetGroup(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group: value,
        }
      ),
      withTestTrafficRoute(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          test_traffic_route: value,
        }
      ),
      withProdTrafficRouteMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          prod_traffic_route+: converted,
        }
      ),
      withTargetGroupMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group+: converted,
        }
      ),
      withTestTrafficRouteMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          test_traffic_route+: converted,
        }
      ),
    },
    withElbInfo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elb_info: value,
      }
    ),
    withTargetGroupInfo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_group_info: value,
      }
    ),
    withTargetGroupPairInfo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_group_pair_info: value,
      }
    ),
    withElbInfoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elb_info+: converted,
      }
    ),
    withTargetGroupInfoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_group_info+: converted,
      }
    ),
    withTargetGroupPairInfoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_group_pair_info+: converted,
      }
    ),
  },
  on_premises_instance_tag_filter:: {
    local block = self,
    new():: (
      {}
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  trigger_configuration:: {
    local block = self,
    new(triggerEvents, triggerName, triggerTargetArn):: (
      {}
      + block.withTriggerEvents(triggerEvents)
      + block.withTriggerName(triggerName)
      + block.withTriggerTargetArn(triggerTargetArn)
    ),
    withTriggerEvents(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trigger_events" expected to be of type "set"';
      {
        trigger_events: converted,
      }
    ),
    withTriggerEventsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trigger_events" expected to be of type "set"';
      {
        trigger_events+: converted,
      }
    ),
    withTriggerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"trigger_name" expected to be of type "string"';
      {
        trigger_name: converted,
      }
    ),
    withTriggerTargetArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"trigger_target_arn" expected to be of type "string"';
      {
        trigger_target_arn: converted,
      }
    ),
  },
  withAlarmConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alarm_configuration: value,
    }
  ),
  withAutoRollbackConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_rollback_configuration: value,
    }
  ),
  withBlueGreenDeploymentConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      blue_green_deployment_config: value,
    }
  ),
  withDeploymentStyle(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_style: value,
    }
  ),
  withEc2TagFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_tag_filter: value,
    }
  ),
  withEc2TagSet(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_tag_set: value,
    }
  ),
  withEcsService(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ecs_service: value,
    }
  ),
  withLoadBalancerInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer_info: value,
    }
  ),
  withOnPremisesInstanceTagFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_premises_instance_tag_filter: value,
    }
  ),
  withTriggerConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger_configuration: value,
    }
  ),
  withAlarmConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alarm_configuration+: converted,
    }
  ),
  withAutoRollbackConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_rollback_configuration+: converted,
    }
  ),
  withBlueGreenDeploymentConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      blue_green_deployment_config+: converted,
    }
  ),
  withDeploymentStyleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_style+: converted,
    }
  ),
  withEc2TagFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_tag_filter+: converted,
    }
  ),
  withEc2TagSetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_tag_set+: converted,
    }
  ),
  withEcsServiceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ecs_service+: converted,
    }
  ),
  withLoadBalancerInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer_info+: converted,
    }
  ),
  withOnPremisesInstanceTagFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_premises_instance_tag_filter+: converted,
    }
  ),
  withTriggerConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger_configuration+: converted,
    }
  ),
}
