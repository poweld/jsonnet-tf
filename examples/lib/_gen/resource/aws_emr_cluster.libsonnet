{
  local block = self,
  new(terraformName, name, releaseLabel, serviceRole):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emr_cluster",
          type:: "resource",
          attributes:: ["additional_info", "applications", "arn", "autoscaling_role", "cluster_state", "configurations", "configurations_json", "custom_ami_id", "ebs_root_volume_size", "id", "keep_job_flow_alive_when_no_steps", "list_steps_states", "log_encryption_kms_key_id", "log_uri", "master_public_dns", "name", "os_release_label", "placement_group_config", "region", "release_label", "scale_down_behavior", "security_configuration", "service_role", "step", "step_concurrency_level", "tags", "tags_all", "termination_protection", "unhealthy_node_replacement", "visible_to_all_users"],
        },
      },
    }
    + block.withName(name)
    + block.withReleaseLabel(releaseLabel)
    + block.withServiceRole(serviceRole)
  ),
  withAdditionalInfo(value):: (
    local converted = value;
    assert std.isString(converted) : '"additional_info" expected to be of type "string"';
    {
      additional_info: converted,
    }
  ),
  withApplications(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"applications" expected to be of type "set"';
    {
      applications: converted,
    }
  ),
  withApplicationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"applications" expected to be of type "set"';
    {
      applications+: converted,
    }
  ),
  withAutoscalingRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_role" expected to be of type "string"';
    {
      autoscaling_role: converted,
    }
  ),
  withConfigurations(value):: (
    local converted = value;
    assert std.isString(converted) : '"configurations" expected to be of type "string"';
    {
      configurations: converted,
    }
  ),
  withConfigurationsJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"configurations_json" expected to be of type "string"';
    {
      configurations_json: converted,
    }
  ),
  withCustomAmiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_ami_id" expected to be of type "string"';
    {
      custom_ami_id: converted,
    }
  ),
  withEbsRootVolumeSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ebs_root_volume_size" expected to be of type "number"';
    {
      ebs_root_volume_size: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeepJobFlowAliveWhenNoSteps(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"keep_job_flow_alive_when_no_steps" expected to be of type "bool"';
    {
      keep_job_flow_alive_when_no_steps: converted,
    }
  ),
  withListStepsStates(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"list_steps_states" expected to be of type "set"';
    {
      list_steps_states: converted,
    }
  ),
  withListStepsStatesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"list_steps_states" expected to be of type "set"';
    {
      list_steps_states+: converted,
    }
  ),
  withLogEncryptionKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_encryption_kms_key_id" expected to be of type "string"';
    {
      log_encryption_kms_key_id: converted,
    }
  ),
  withLogUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_uri" expected to be of type "string"';
    {
      log_uri: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOsReleaseLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"os_release_label" expected to be of type "string"';
    {
      os_release_label: converted,
    }
  ),
  withPlacementGroupConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"placement_group_config" expected to be of type "list"';
    {
      placement_group_config: converted,
    }
  ),
  withPlacementGroupConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"placement_group_config" expected to be of type "list"';
    {
      placement_group_config+: converted,
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
  withScaleDownBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"scale_down_behavior" expected to be of type "string"';
    {
      scale_down_behavior: converted,
    }
  ),
  withSecurityConfiguration(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
    {
      security_configuration: converted,
    }
  ),
  withServiceRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
    }
  ),
  withStep(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"step" expected to be of type "list"';
    {
      step: converted,
    }
  ),
  withStepMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"step" expected to be of type "list"';
    {
      step+: converted,
    }
  ),
  withStepConcurrencyLevel(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"step_concurrency_level" expected to be of type "number"';
    {
      step_concurrency_level: converted,
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
  withTerminationProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"termination_protection" expected to be of type "bool"';
    {
      termination_protection: converted,
    }
  ),
  withUnhealthyNodeReplacement(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"unhealthy_node_replacement" expected to be of type "bool"';
    {
      unhealthy_node_replacement: converted,
    }
  ),
  withVisibleToAllUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"visible_to_all_users" expected to be of type "bool"';
    {
      visible_to_all_users: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  auto_termination_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withIdleTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"idle_timeout" expected to be of type "number"';
      {
        idle_timeout: converted,
      }
    ),
  },
  bootstrap_action:: {
    local block = self,
    new(name, path):: (
      {}
      + block.withName(name)
      + block.withPath(path)
    ),
    withArgs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"args" expected to be of type "list"';
      {
        args: converted,
      }
    ),
    withArgsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"args" expected to be of type "list"';
      {
        args+: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
  },
  core_instance_fleet:: {
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
  },
  core_instance_group:: {
    local block = self,
    new(instanceType):: (
      {}
      + block.withInstanceType(instanceType)
    ),
    withAutoscalingPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"autoscaling_policy" expected to be of type "string"';
      {
        autoscaling_policy: converted,
      }
    ),
    withBidPrice(value):: (
      local converted = value;
      assert std.isString(converted) : '"bid_price" expected to be of type "string"';
      {
        bid_price: converted,
      }
    ),
    withInstanceCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
      {
        instance_count: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
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
      withThroughput(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
        {
          throughput: converted,
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
    withEbsConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config: value,
      }
    ),
    withEbsConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config+: converted,
      }
    ),
  },
  ec2_attributes:: {
    local block = self,
    new(instanceProfile):: (
      {}
      + block.withInstanceProfile(instanceProfile)
    ),
    withAdditionalMasterSecurityGroups(value):: (
      local converted = value;
      assert std.isString(converted) : '"additional_master_security_groups" expected to be of type "string"';
      {
        additional_master_security_groups: converted,
      }
    ),
    withAdditionalSlaveSecurityGroups(value):: (
      local converted = value;
      assert std.isString(converted) : '"additional_slave_security_groups" expected to be of type "string"';
      {
        additional_slave_security_groups: converted,
      }
    ),
    withEmrManagedMasterSecurityGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"emr_managed_master_security_group" expected to be of type "string"';
      {
        emr_managed_master_security_group: converted,
      }
    ),
    withEmrManagedSlaveSecurityGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"emr_managed_slave_security_group" expected to be of type "string"';
      {
        emr_managed_slave_security_group: converted,
      }
    ),
    withInstanceProfile(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_profile" expected to be of type "string"';
      {
        instance_profile: converted,
      }
    ),
    withKeyName(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_name" expected to be of type "string"';
      {
        key_name: converted,
      }
    ),
    withServiceAccessSecurityGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_access_security_group" expected to be of type "string"';
      {
        service_access_security_group: converted,
      }
    ),
    withSubnetId(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
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
  },
  kerberos_attributes:: {
    local block = self,
    new(kdcAdminPassword, realm):: (
      {}
      + block.withKdcAdminPassword(kdcAdminPassword)
      + block.withRealm(realm)
    ),
    withAdDomainJoinPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"ad_domain_join_password" expected to be of type "string"';
      {
        ad_domain_join_password: converted,
      }
    ),
    withAdDomainJoinUser(value):: (
      local converted = value;
      assert std.isString(converted) : '"ad_domain_join_user" expected to be of type "string"';
      {
        ad_domain_join_user: converted,
      }
    ),
    withCrossRealmTrustPrincipalPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"cross_realm_trust_principal_password" expected to be of type "string"';
      {
        cross_realm_trust_principal_password: converted,
      }
    ),
    withKdcAdminPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"kdc_admin_password" expected to be of type "string"';
      {
        kdc_admin_password: converted,
      }
    ),
    withRealm(value):: (
      local converted = value;
      assert std.isString(converted) : '"realm" expected to be of type "string"';
      {
        realm: converted,
      }
    ),
  },
  master_instance_fleet:: {
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
  },
  master_instance_group:: {
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
    withInstanceCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
      {
        instance_count: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
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
      withThroughput(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
        {
          throughput: converted,
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
    withEbsConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config: value,
      }
    ),
    withEbsConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_config+: converted,
      }
    ),
  },
  withAutoTerminationPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_termination_policy: value,
    }
  ),
  withBootstrapAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bootstrap_action: value,
    }
  ),
  withCoreInstanceFleet(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_instance_fleet: value,
    }
  ),
  withCoreInstanceGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_instance_group: value,
    }
  ),
  withEc2Attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_attributes: value,
    }
  ),
  withKerberosAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kerberos_attributes: value,
    }
  ),
  withMasterInstanceFleet(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_instance_fleet: value,
    }
  ),
  withMasterInstanceGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_instance_group: value,
    }
  ),
  withAutoTerminationPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_termination_policy+: converted,
    }
  ),
  withBootstrapActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bootstrap_action+: converted,
    }
  ),
  withCoreInstanceFleetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_instance_fleet+: converted,
    }
  ),
  withCoreInstanceGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_instance_group+: converted,
    }
  ),
  withEc2AttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_attributes+: converted,
    }
  ),
  withKerberosAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kerberos_attributes+: converted,
    }
  ),
  withMasterInstanceFleetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_instance_fleet+: converted,
    }
  ),
  withMasterInstanceGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_instance_group+: converted,
    }
  ),
}
