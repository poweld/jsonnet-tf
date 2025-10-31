{
  local block = self,
  new(terraformName, baseCapacity, computeType, environmentType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codebuild_fleet",
          type:: "resource",
          attributes:: ["arn", "base_capacity", "compute_type", "created", "environment_type", "fleet_service_role", "id", "image_id", "last_modified", "name", "overflow_behavior", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withBaseCapacity(baseCapacity)
    + block.withComputeType(computeType)
    + block.withEnvironmentType(environmentType)
    + block.withName(name)
  ),
  withBaseCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"base_capacity" expected to be of type "number"';
    {
      base_capacity: converted,
    }
  ),
  withComputeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_type" expected to be of type "string"';
    {
      compute_type: converted,
    }
  ),
  withEnvironmentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_type" expected to be of type "string"';
    {
      environment_type: converted,
    }
  ),
  withFleetServiceRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_service_role" expected to be of type "string"';
    {
      fleet_service_role: converted,
    }
  ),
  withImageId(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOverflowBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"overflow_behavior" expected to be of type "string"';
    {
      overflow_behavior: converted,
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
  compute_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withDisk(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"disk" expected to be of type "number"';
      {
        disk: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withMachineType(value):: (
      local converted = value;
      assert std.isString(converted) : '"machine_type" expected to be of type "string"';
      {
        machine_type: converted,
      }
    ),
    withMemory(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory" expected to be of type "number"';
      {
        memory: converted,
      }
    ),
    withVcpu(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"vcpu" expected to be of type "number"';
      {
        vcpu: converted,
      }
    ),
  },
  scaling_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withMaxCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
      {
        max_capacity: converted,
      }
    ),
    withScalingType(value):: (
      local converted = value;
      assert std.isString(converted) : '"scaling_type" expected to be of type "string"';
      {
        scaling_type: converted,
      }
    ),
    target_tracking_scaling_configs:: {
      local block = self,
      new():: (
        {}
      ),
      withMetricType(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_type" expected to be of type "string"';
        {
          metric_type: converted,
        }
      ),
      withTargetValue(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"target_value" expected to be of type "number"';
        {
          target_value: converted,
        }
      ),
    },
    withTargetTrackingScalingConfigs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_scaling_configs: value,
      }
    ),
    withTargetTrackingScalingConfigsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_scaling_configs+: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new(securityGroupIds, subnets, vpcId):: (
      {}
      + block.withSecurityGroupIds(securityGroupIds)
      + block.withSubnets(subnets)
      + block.withVpcId(vpcId)
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    withSubnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    withSubnetsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
    withVpcId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  withComputeConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_configuration: value,
    }
  ),
  withScalingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_configuration: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withComputeConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_configuration+: converted,
    }
  ),
  withScalingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_configuration+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
