{
  local block = self,
  new(terraformName, clusterId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emr_instance_fleet",
          type:: "resource",
          attributes:: ["cluster_id", "id", "name", "provisioned_on_demand_capacity", "provisioned_spot_capacity", "region", "target_on_demand_capacity", "target_spot_capacity"],
        },
      },
    }
    + block.withClusterId(clusterId)
  ),
  withClusterId(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
    }
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
  withTargetOnDemandCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"target_on_demand_capacity" expected to be of type "number"';
    {
      target_on_demand_capacity: converted,
    }
  ),
  withTargetSpotCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"target_spot_capacity" expected to be of type "number"';
    {
      target_spot_capacity: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  instance_type_configs:: {
    local block = self,
    new(instanceType):: (
      {}
      + block.withInstanceType(instanceType)
    ),
    withBidPrice(value):: (
      local converted = value;
      assert std.isString(converted) : '"bid_price" expected to be of type "string"';
      {
        bid_price: converted,
      }
    ),
    withBidPriceAsPercentageOfOnDemandPrice(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bid_price_as_percentage_of_on_demand_price" expected to be of type "number"';
      {
        bid_price_as_percentage_of_on_demand_price: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withWeightedCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weighted_capacity" expected to be of type "number"';
      {
        weighted_capacity: converted,
      }
    ),
    configurations:: {
      local block = self,
      new():: (
        {}
      ),
      withClassification(value):: (
        local converted = value;
        assert std.isString(converted) : '"classification" expected to be of type "string"';
        {
          classification: converted,
        }
      ),
      withProperties(value):: (
        local converted = value;
        assert std.isObject(converted) : '"properties" expected to be of type "map"';
        {
          properties: converted,
        }
      ),
    },
    ebs_config:: {
      local block = self,
      new(size, type):: (
        {}
        + block.withSize(size)
        + block.withType(type)
      ),
      withIops(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"iops" expected to be of type "number"';
        {
          iops: converted,
        }
      ),
      withSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"size" expected to be of type "number"';
        {
          size: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      withVolumesPerInstance(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volumes_per_instance" expected to be of type "number"';
        {
          volumes_per_instance: converted,
        }
      ),
    },
    withConfigurations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        configurations: value,
      }
    ),
    withEbsConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config: value,
      }
    ),
    withConfigurationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        configurations+: converted,
      }
    ),
    withEbsConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config+: converted,
      }
    ),
  },
  launch_specifications:: {
    local block = self,
    new():: (
      {}
    ),
    on_demand_specification:: {
      local block = self,
      new(allocationStrategy):: (
        {}
        + block.withAllocationStrategy(allocationStrategy)
      ),
      withAllocationStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
        {
          allocation_strategy: converted,
        }
      ),
    },
    spot_specification:: {
      local block = self,
      new(allocationStrategy, timeoutAction, timeoutDurationMinutes):: (
        {}
        + block.withAllocationStrategy(allocationStrategy)
        + block.withTimeoutAction(timeoutAction)
        + block.withTimeoutDurationMinutes(timeoutDurationMinutes)
      ),
      withAllocationStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
        {
          allocation_strategy: converted,
        }
      ),
      withBlockDurationMinutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"block_duration_minutes" expected to be of type "number"';
        {
          block_duration_minutes: converted,
        }
      ),
      withTimeoutAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"timeout_action" expected to be of type "string"';
        {
          timeout_action: converted,
        }
      ),
      withTimeoutDurationMinutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_duration_minutes" expected to be of type "number"';
        {
          timeout_duration_minutes: converted,
        }
      ),
    },
    withOnDemandSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_demand_specification: value,
      }
    ),
    withSpotSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_specification: value,
      }
    ),
    withOnDemandSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_demand_specification+: converted,
      }
    ),
    withSpotSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_specification+: converted,
      }
    ),
  },
  withInstanceTypeConfigs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_type_configs: value,
    }
  ),
  withLaunchSpecifications(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_specifications: value,
    }
  ),
  withInstanceTypeConfigsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_type_configs+: converted,
    }
  ),
  withLaunchSpecificationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_specifications+: converted,
    }
  ),
}
