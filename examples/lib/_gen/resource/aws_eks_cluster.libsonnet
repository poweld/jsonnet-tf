{
  local block = self,
  new(terraformName, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_cluster",
          type:: "resource",
          attributes:: ["arn", "bootstrap_self_managed_addons", "certificate_authority", "cluster_id", "created_at", "deletion_protection", "enabled_cluster_log_types", "endpoint", "force_update_version", "id", "identity", "name", "platform_version", "region", "role_arn", "status", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  withBootstrapSelfManagedAddons(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bootstrap_self_managed_addons" expected to be of type "bool"';
    {
      bootstrap_self_managed_addons: converted,
    }
  ),
  withDeletionProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection" expected to be of type "bool"';
    {
      deletion_protection: converted,
    }
  ),
  withEnabledClusterLogTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cluster_log_types" expected to be of type "set"';
    {
      enabled_cluster_log_types: converted,
    }
  ),
  withEnabledClusterLogTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cluster_log_types" expected to be of type "set"';
    {
      enabled_cluster_log_types+: converted,
    }
  ),
  withForceUpdateVersion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_update_version" expected to be of type "bool"';
    {
      force_update_version: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  access_config:: {
    local block = self,
    new():: (
      {}
    ),
    withAuthenticationMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"authentication_mode" expected to be of type "string"';
      {
        authentication_mode: converted,
      }
    ),
    withBootstrapClusterCreatorAdminPermissions(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"bootstrap_cluster_creator_admin_permissions" expected to be of type "bool"';
      {
        bootstrap_cluster_creator_admin_permissions: converted,
      }
    ),
  },
  compute_config:: {
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
    withNodePools(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"node_pools" expected to be of type "set"';
      {
        node_pools: converted,
      }
    ),
    withNodePoolsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"node_pools" expected to be of type "set"';
      {
        node_pools+: converted,
      }
    ),
    withNodeRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"node_role_arn" expected to be of type "string"';
      {
        node_role_arn: converted,
      }
    ),
  },
  encryption_config:: {
    local block = self,
    new(resources):: (
      {}
      + block.withResources(resources)
    ),
    withResources(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
      {
        resources: converted,
      }
    ),
    withResourcesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
      {
        resources+: converted,
      }
    ),
    provider:: {
      local block = self,
      new(keyArn):: (
        {}
        + block.withKeyArn(keyArn)
      ),
      withKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_arn" expected to be of type "string"';
        {
          key_arn: converted,
        }
      ),
    },
    withProvider(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider: value,
      }
    ),
    withProviderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider+: converted,
      }
    ),
  },
  kubernetes_network_config:: {
    local block = self,
    new():: (
      {}
    ),
    withIpFamily(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_family" expected to be of type "string"';
      {
        ip_family: converted,
      }
    ),
    withServiceIpv4Cidr(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_ipv4_cidr" expected to be of type "string"';
      {
        service_ipv4_cidr: converted,
      }
    ),
    elastic_load_balancing:: {
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
    },
    withElasticLoadBalancing(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elastic_load_balancing: value,
      }
    ),
    withElasticLoadBalancingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elastic_load_balancing+: converted,
      }
    ),
  },
  outpost_config:: {
    local block = self,
    new(controlPlaneInstanceType, outpostArns):: (
      {}
      + block.withControlPlaneInstanceType(controlPlaneInstanceType)
      + block.withOutpostArns(outpostArns)
    ),
    withControlPlaneInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"control_plane_instance_type" expected to be of type "string"';
      {
        control_plane_instance_type: converted,
      }
    ),
    withOutpostArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"outpost_arns" expected to be of type "set"';
      {
        outpost_arns: converted,
      }
    ),
    withOutpostArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"outpost_arns" expected to be of type "set"';
      {
        outpost_arns+: converted,
      }
    ),
    control_plane_placement:: {
      local block = self,
      new(groupName):: (
        {}
        + block.withGroupName(groupName)
      ),
      withGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"group_name" expected to be of type "string"';
        {
          group_name: converted,
        }
      ),
    },
    withControlPlanePlacement(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        control_plane_placement: value,
      }
    ),
    withControlPlanePlacementMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        control_plane_placement+: converted,
      }
    ),
  },
  remote_network_config:: {
    local block = self,
    new():: (
      {}
    ),
    remote_node_networks:: {
      local block = self,
      new():: (
        {}
      ),
      withCidrs(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
        {
          cidrs: converted,
        }
      ),
      withCidrsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
        {
          cidrs+: converted,
        }
      ),
    },
    remote_pod_networks:: {
      local block = self,
      new():: (
        {}
      ),
      withCidrs(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
        {
          cidrs: converted,
        }
      ),
      withCidrsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
        {
          cidrs+: converted,
        }
      ),
    },
    withRemoteNodeNetworks(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        remote_node_networks: value,
      }
    ),
    withRemotePodNetworks(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        remote_pod_networks: value,
      }
    ),
    withRemoteNodeNetworksMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        remote_node_networks+: converted,
      }
    ),
    withRemotePodNetworksMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        remote_pod_networks+: converted,
      }
    ),
  },
  storage_config:: {
    local block = self,
    new():: (
      {}
    ),
    block_storage:: {
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
    },
    withBlockStorage(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        block_storage: value,
      }
    ),
    withBlockStorageMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        block_storage+: converted,
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
  upgrade_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withSupportType(value):: (
      local converted = value;
      assert std.isString(converted) : '"support_type" expected to be of type "string"';
      {
        support_type: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new(subnetIds):: (
      {}
      + block.withSubnetIds(subnetIds)
    ),
    withEndpointPrivateAccess(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"endpoint_private_access" expected to be of type "bool"';
      {
        endpoint_private_access: converted,
      }
    ),
    withEndpointPublicAccess(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"endpoint_public_access" expected to be of type "bool"';
      {
        endpoint_public_access: converted,
      }
    ),
    withPublicAccessCidrs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"public_access_cidrs" expected to be of type "set"';
      {
        public_access_cidrs: converted,
      }
    ),
    withPublicAccessCidrsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"public_access_cidrs" expected to be of type "set"';
      {
        public_access_cidrs+: converted,
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
  },
  zonal_shift_config:: {
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
  },
  withAccessConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_config: value,
    }
  ),
  withComputeConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_config: value,
    }
  ),
  withEncryptionConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_config: value,
    }
  ),
  withKubernetesNetworkConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kubernetes_network_config: value,
    }
  ),
  withOutpostConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outpost_config: value,
    }
  ),
  withRemoteNetworkConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_network_config: value,
    }
  ),
  withStorageConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withUpgradePolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      upgrade_policy: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withZonalShiftConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      zonal_shift_config: value,
    }
  ),
  withAccessConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_config+: converted,
    }
  ),
  withComputeConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_config+: converted,
    }
  ),
  withEncryptionConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_config+: converted,
    }
  ),
  withKubernetesNetworkConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kubernetes_network_config+: converted,
    }
  ),
  withOutpostConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outpost_config+: converted,
    }
  ),
  withRemoteNetworkConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_network_config+: converted,
    }
  ),
  withStorageConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_config+: converted,
    }
  ),
  withUpgradePolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      upgrade_policy+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
  withZonalShiftConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      zonal_shift_config+: converted,
    }
  ),
}
