{
  local block = self,
  new(terraformName, ec2InstanceType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_gamelift_fleet",
          type:: "resource",
          attributes:: ["arn", "build_arn", "build_id", "description", "ec2_instance_type", "fleet_type", "id", "instance_role_arn", "log_paths", "metric_groups", "name", "new_game_session_protection_policy", "operating_system", "region", "script_arn", "script_id", "tags", "tags_all"],
        },
      },
    }
    + block.withEc2InstanceType(ec2InstanceType)
    + block.withName(name)
  ),
  withBuildId(value):: (
    local converted = value;
    assert std.isString(converted) : '"build_id" expected to be of type "string"';
    {
      build_id: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEc2InstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ec2_instance_type" expected to be of type "string"';
    {
      ec2_instance_type: converted,
    }
  ),
  withFleetType(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_type" expected to be of type "string"';
    {
      fleet_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_role_arn" expected to be of type "string"';
    {
      instance_role_arn: converted,
    }
  ),
  withMetricGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metric_groups" expected to be of type "list"';
    {
      metric_groups: converted,
    }
  ),
  withMetricGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metric_groups" expected to be of type "list"';
    {
      metric_groups+: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNewGameSessionProtectionPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"new_game_session_protection_policy" expected to be of type "string"';
    {
      new_game_session_protection_policy: converted,
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
  withScriptId(value):: (
    local converted = value;
    assert std.isString(converted) : '"script_id" expected to be of type "string"';
    {
      script_id: converted,
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
  certificate_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withCertificateType(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_type" expected to be of type "string"';
      {
        certificate_type: converted,
      }
    ),
  },
  ec2_inbound_permission:: {
    local block = self,
    new(fromPort, ipRange, protocol, toPort):: (
      {}
      + block.withFromPort(fromPort)
      + block.withIpRange(ipRange)
      + block.withProtocol(protocol)
      + block.withToPort(toPort)
    ),
    withFromPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    withIpRange(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_range" expected to be of type "string"';
      {
        ip_range: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    withToPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
      {
        to_port: converted,
      }
    ),
  },
  resource_creation_limit_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withNewGameSessionsPerCreator(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"new_game_sessions_per_creator" expected to be of type "number"';
      {
        new_game_sessions_per_creator: converted,
      }
    ),
    withPolicyPeriodInMinutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"policy_period_in_minutes" expected to be of type "number"';
      {
        policy_period_in_minutes: converted,
      }
    ),
  },
  runtime_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withGameSessionActivationTimeoutSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"game_session_activation_timeout_seconds" expected to be of type "number"';
      {
        game_session_activation_timeout_seconds: converted,
      }
    ),
    withMaxConcurrentGameSessionActivations(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrent_game_session_activations" expected to be of type "number"';
      {
        max_concurrent_game_session_activations: converted,
      }
    ),
    server_process:: {
      local block = self,
      new(concurrentExecutions, launchPath):: (
        {}
        + block.withConcurrentExecutions(concurrentExecutions)
        + block.withLaunchPath(launchPath)
      ),
      withConcurrentExecutions(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"concurrent_executions" expected to be of type "number"';
        {
          concurrent_executions: converted,
        }
      ),
      withLaunchPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_path" expected to be of type "string"';
        {
          launch_path: converted,
        }
      ),
      withParameters(value):: (
        local converted = value;
        assert std.isString(converted) : '"parameters" expected to be of type "string"';
        {
          parameters: converted,
        }
      ),
    },
    withServerProcess(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        server_process: value,
      }
    ),
    withServerProcessMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        server_process+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withCertificateConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_configuration: value,
    }
  ),
  withEc2InboundPermission(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_inbound_permission: value,
    }
  ),
  withResourceCreationLimitPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_creation_limit_policy: value,
    }
  ),
  withRuntimeConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCertificateConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_configuration+: converted,
    }
  ),
  withEc2InboundPermissionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_inbound_permission+: converted,
    }
  ),
  withResourceCreationLimitPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_creation_limit_policy+: converted,
    }
  ),
  withRuntimeConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime_configuration+: converted,
    }
  ),
}
