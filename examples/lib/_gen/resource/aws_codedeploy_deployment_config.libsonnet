{
  local block = self,
  new(terraformName, deploymentConfigName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codedeploy_deployment_config",
          type:: "resource",
          attributes:: ["arn", "compute_platform", "deployment_config_id", "deployment_config_name", "id", "region"],
        },
      },
    }
    + block.withDeploymentConfigName(deploymentConfigName)
  ),
  withComputePlatform(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_platform" expected to be of type "string"';
    {
      compute_platform: converted,
    }
  ),
  withDeploymentConfigName(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_config_name" expected to be of type "string"';
    {
      deployment_config_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  minimum_healthy_hosts:: {
    local block = self,
    new():: (
      {}
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
      assert std.isNumber(converted) : '"value" expected to be of type "number"';
      {
        value: converted,
      }
    ),
  },
  traffic_routing_config:: {
    local block = self,
    new():: (
      {}
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    time_based_canary:: {
      local block = self,
      new():: (
        {}
      ),
      withInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"interval" expected to be of type "number"';
        {
          interval: converted,
        }
      ),
      withPercentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"percentage" expected to be of type "number"';
        {
          percentage: converted,
        }
      ),
    },
    time_based_linear:: {
      local block = self,
      new():: (
        {}
      ),
      withInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"interval" expected to be of type "number"';
        {
          interval: converted,
        }
      ),
      withPercentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"percentage" expected to be of type "number"';
        {
          percentage: converted,
        }
      ),
    },
    withTimeBasedCanary(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        time_based_canary: value,
      }
    ),
    withTimeBasedLinear(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        time_based_linear: value,
      }
    ),
    withTimeBasedCanaryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        time_based_canary+: converted,
      }
    ),
    withTimeBasedLinearMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        time_based_linear+: converted,
      }
    ),
  },
  zonal_config:: {
    local block = self,
    new():: (
      {}
    ),
    withFirstZoneMonitorDurationInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"first_zone_monitor_duration_in_seconds" expected to be of type "number"';
      {
        first_zone_monitor_duration_in_seconds: converted,
      }
    ),
    withMonitorDurationInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"monitor_duration_in_seconds" expected to be of type "number"';
      {
        monitor_duration_in_seconds: converted,
      }
    ),
    minimum_healthy_hosts_per_zone:: {
      local block = self,
      new():: (
        {}
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
        assert std.isNumber(converted) : '"value" expected to be of type "number"';
        {
          value: converted,
        }
      ),
    },
    withMinimumHealthyHostsPerZone(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        minimum_healthy_hosts_per_zone: value,
      }
    ),
    withMinimumHealthyHostsPerZoneMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        minimum_healthy_hosts_per_zone+: converted,
      }
    ),
  },
  withMinimumHealthyHosts(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      minimum_healthy_hosts: value,
    }
  ),
  withTrafficRoutingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_routing_config: value,
    }
  ),
  withZonalConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      zonal_config: value,
    }
  ),
  withMinimumHealthyHostsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      minimum_healthy_hosts+: converted,
    }
  ),
  withTrafficRoutingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_routing_config+: converted,
    }
  ),
  withZonalConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      zonal_config+: converted,
    }
  ),
}
