{
  local block = self,
  new(terraformName, azMode, environmentId, name, releaseLabel, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_finspace_kx_cluster",
          type:: "resource",
          attributes:: ["arn", "availability_zone_id", "az_mode", "command_line_arguments", "created_timestamp", "description", "environment_id", "execution_role", "id", "initialization_script", "last_modified_timestamp", "name", "region", "release_label", "status", "status_reason", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withAzMode(azMode)
    + block.withEnvironmentId(environmentId)
    + block.withName(name)
    + block.withReleaseLabel(releaseLabel)
    + block.withType(type)
  ),
  withAvailabilityZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_id" expected to be of type "string"';
    {
      availability_zone_id: converted,
    }
  ),
  withAzMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"az_mode" expected to be of type "string"';
    {
      az_mode: converted,
    }
  ),
  withCommandLineArguments(value):: (
    local converted = value;
    assert std.isObject(converted) : '"command_line_arguments" expected to be of type "map"';
    {
      command_line_arguments: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnvironmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
    }
  ),
  withExecutionRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role" expected to be of type "string"';
    {
      execution_role: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInitializationScript(value):: (
    local converted = value;
    assert std.isString(converted) : '"initialization_script" expected to be of type "string"';
    {
      initialization_script: converted,
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
  withReleaseLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_label" expected to be of type "string"';
    {
      release_label: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  auto_scaling_configuration:: {
    local block = self,
    new(autoScalingMetric, maxNodeCount, metricTarget, minNodeCount, scaleInCooldownSeconds, scaleOutCooldownSeconds):: (
      {}
      + block.withAutoScalingMetric(autoScalingMetric)
      + block.withMaxNodeCount(maxNodeCount)
      + block.withMetricTarget(metricTarget)
      + block.withMinNodeCount(minNodeCount)
      + block.withScaleInCooldownSeconds(scaleInCooldownSeconds)
      + block.withScaleOutCooldownSeconds(scaleOutCooldownSeconds)
    ),
    withAutoScalingMetric(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_scaling_metric" expected to be of type "string"';
      {
        auto_scaling_metric: converted,
      }
    ),
    withMaxNodeCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_node_count" expected to be of type "number"';
      {
        max_node_count: converted,
      }
    ),
    withMetricTarget(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"metric_target" expected to be of type "number"';
      {
        metric_target: converted,
      }
    ),
    withMinNodeCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_node_count" expected to be of type "number"';
      {
        min_node_count: converted,
      }
    ),
    withScaleInCooldownSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scale_in_cooldown_seconds" expected to be of type "number"';
      {
        scale_in_cooldown_seconds: converted,
      }
    ),
    withScaleOutCooldownSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scale_out_cooldown_seconds" expected to be of type "number"';
      {
        scale_out_cooldown_seconds: converted,
      }
    ),
  },
  cache_storage_configurations:: {
    local block = self,
    new(size, type):: (
      {}
      + block.withSize(size)
      + block.withType(type)
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
  },
  capacity_configuration:: {
    local block = self,
    new(nodeCount, nodeType):: (
      {}
      + block.withNodeCount(nodeCount)
      + block.withNodeType(nodeType)
    ),
    withNodeCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"node_count" expected to be of type "number"';
      {
        node_count: converted,
      }
    ),
    withNodeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"node_type" expected to be of type "string"';
      {
        node_type: converted,
      }
    ),
  },
  code:: {
    local block = self,
    new(s3Bucket, s3Key):: (
      {}
      + block.withS3Bucket(s3Bucket)
      + block.withS3Key(s3Key)
    ),
    withS3Bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
      {
        s3_bucket: converted,
      }
    ),
    withS3Key(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_key" expected to be of type "string"';
      {
        s3_key: converted,
      }
    ),
    withS3ObjectVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_object_version" expected to be of type "string"';
      {
        s3_object_version: converted,
      }
    ),
  },
  database:: {
    local block = self,
    new(databaseName):: (
      {}
      + block.withDatabaseName(databaseName)
    ),
    withChangesetId(value):: (
      local converted = value;
      assert std.isString(converted) : '"changeset_id" expected to be of type "string"';
      {
        changeset_id: converted,
      }
    ),
    withDatabaseName(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    withDataviewName(value):: (
      local converted = value;
      assert std.isString(converted) : '"dataview_name" expected to be of type "string"';
      {
        dataview_name: converted,
      }
    ),
    cache_configurations:: {
      local block = self,
      new(cacheType):: (
        {}
        + block.withCacheType(cacheType)
      ),
      withCacheType(value):: (
        local converted = value;
        assert std.isString(converted) : '"cache_type" expected to be of type "string"';
        {
          cache_type: converted,
        }
      ),
      withDbPaths(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_paths" expected to be of type "set"';
        {
          db_paths: converted,
        }
      ),
      withDbPathsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_paths" expected to be of type "set"';
        {
          db_paths+: converted,
        }
      ),
    },
    withCacheConfigurations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cache_configurations: value,
      }
    ),
    withCacheConfigurationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cache_configurations+: converted,
      }
    ),
  },
  savedown_storage_configuration:: {
    local block = self,
    new():: (
      {}
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
    withVolumeName(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_name" expected to be of type "string"';
      {
        volume_name: converted,
      }
    ),
  },
  scaling_group_configuration:: {
    local block = self,
    new(memoryReservation, nodeCount, scalingGroupName):: (
      {}
      + block.withMemoryReservation(memoryReservation)
      + block.withNodeCount(nodeCount)
      + block.withScalingGroupName(scalingGroupName)
    ),
    withCpu(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cpu" expected to be of type "number"';
      {
        cpu: converted,
      }
    ),
    withMemoryLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory_limit" expected to be of type "number"';
      {
        memory_limit: converted,
      }
    ),
    withMemoryReservation(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory_reservation" expected to be of type "number"';
      {
        memory_reservation: converted,
      }
    ),
    withNodeCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"node_count" expected to be of type "number"';
      {
        node_count: converted,
      }
    ),
    withScalingGroupName(value):: (
      local converted = value;
      assert std.isString(converted) : '"scaling_group_name" expected to be of type "string"';
      {
        scaling_group_name: converted,
      }
    ),
  },
  tickerplant_log_configuration:: {
    local block = self,
    new(tickerplantLogVolumes):: (
      {}
      + block.withTickerplantLogVolumes(tickerplantLogVolumes)
    ),
    withTickerplantLogVolumes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tickerplant_log_volumes" expected to be of type "set"';
      {
        tickerplant_log_volumes: converted,
      }
    ),
    withTickerplantLogVolumesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tickerplant_log_volumes" expected to be of type "set"';
      {
        tickerplant_log_volumes+: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  vpc_configuration:: {
    local block = self,
    new(ipAddressType, securityGroupIds, subnetIds, vpcId):: (
      {}
      + block.withIpAddressType(ipAddressType)
      + block.withSecurityGroupIds(securityGroupIds)
      + block.withSubnetIds(subnetIds)
      + block.withVpcId(vpcId)
    ),
    withIpAddressType(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
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
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
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
  withAutoScalingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_configuration: value,
    }
  ),
  withCacheStorageConfigurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_storage_configurations: value,
    }
  ),
  withCapacityConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_configuration: value,
    }
  ),
  withCode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      code: value,
    }
  ),
  withDatabase(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      database: value,
    }
  ),
  withSavedownStorageConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      savedown_storage_configuration: value,
    }
  ),
  withScalingGroupConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_group_configuration: value,
    }
  ),
  withTickerplantLogConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tickerplant_log_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpcConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration: value,
    }
  ),
  withAutoScalingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_configuration+: converted,
    }
  ),
  withCacheStorageConfigurationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_storage_configurations+: converted,
    }
  ),
  withCapacityConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_configuration+: converted,
    }
  ),
  withCodeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      code+: converted,
    }
  ),
  withDatabaseMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      database+: converted,
    }
  ),
  withSavedownStorageConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      savedown_storage_configuration+: converted,
    }
  ),
  withScalingGroupConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_group_configuration+: converted,
    }
  ),
  withTickerplantLogConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tickerplant_log_configuration+: converted,
    }
  ),
  withVpcConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration+: converted,
    }
  ),
}
