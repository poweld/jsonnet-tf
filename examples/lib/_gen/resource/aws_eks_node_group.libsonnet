{
  local block = self,
  new(terraformName, clusterName, nodeRoleArn, subnetIds):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_node_group",
          type:: "resource",
          attributes:: ["ami_type", "arn", "capacity_type", "cluster_name", "disk_size", "force_update_version", "id", "instance_types", "labels", "node_group_name", "node_group_name_prefix", "node_role_arn", "region", "release_version", "resources", "status", "subnet_ids", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withClusterName(clusterName)
    + block.withNodeRoleArn(nodeRoleArn)
    + block.withSubnetIds(subnetIds)
  ),
  withAmiType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ami_type" expected to be of type "string"';
    {
      ami_type: converted,
    }
  ),
  withCapacityType(value):: (
    local converted = value;
    assert std.isString(converted) : '"capacity_type" expected to be of type "string"';
    {
      capacity_type: converted,
    }
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  withDiskSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"disk_size" expected to be of type "number"';
    {
      disk_size: converted,
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
  withInstanceTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_types" expected to be of type "list"';
    {
      instance_types: converted,
    }
  ),
  withInstanceTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_types" expected to be of type "list"';
    {
      instance_types+: converted,
    }
  ),
  withLabels(value):: (
    local converted = value;
    assert std.isObject(converted) : '"labels" expected to be of type "map"';
    {
      labels: converted,
    }
  ),
  withNodeGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_group_name" expected to be of type "string"';
    {
      node_group_name: converted,
    }
  ),
  withNodeGroupNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_group_name_prefix" expected to be of type "string"';
    {
      node_group_name_prefix: converted,
    }
  ),
  withNodeRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_role_arn" expected to be of type "string"';
    {
      node_role_arn: converted,
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
  withReleaseVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_version" expected to be of type "string"';
    {
      release_version: converted,
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
  launch_template:: {
    local block = self,
    new(version):: (
      {}
      + block.withVersion(version)
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
    withVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
  },
  node_repair_config:: {
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
  remote_access:: {
    local block = self,
    new():: (
      {}
    ),
    withEc2SshKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"ec2_ssh_key" expected to be of type "string"';
      {
        ec2_ssh_key: converted,
      }
    ),
    withSourceSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source_security_group_ids" expected to be of type "set"';
      {
        source_security_group_ids: converted,
      }
    ),
    withSourceSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source_security_group_ids" expected to be of type "set"';
      {
        source_security_group_ids+: converted,
      }
    ),
  },
  scaling_config:: {
    local block = self,
    new(desiredSize, maxSize, minSize):: (
      {}
      + block.withDesiredSize(desiredSize)
      + block.withMaxSize(maxSize)
      + block.withMinSize(minSize)
    ),
    withDesiredSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_size" expected to be of type "number"';
      {
        desired_size: converted,
      }
    ),
    withMaxSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
      {
        max_size: converted,
      }
    ),
    withMinSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
      {
        min_size: converted,
      }
    ),
  },
  taint:: {
    local block = self,
    new(effect, key):: (
      {}
      + block.withEffect(effect)
      + block.withKey(key)
    ),
    withEffect(value):: (
      local converted = value;
      assert std.isString(converted) : '"effect" expected to be of type "string"';
      {
        effect: converted,
      }
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
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
  update_config:: {
    local block = self,
    new():: (
      {}
    ),
    withMaxUnavailable(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_unavailable" expected to be of type "number"';
      {
        max_unavailable: converted,
      }
    ),
    withMaxUnavailablePercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_unavailable_percentage" expected to be of type "number"';
      {
        max_unavailable_percentage: converted,
      }
    ),
  },
  withLaunchTemplate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template: value,
    }
  ),
  withNodeRepairConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      node_repair_config: value,
    }
  ),
  withRemoteAccess(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_access: value,
    }
  ),
  withScalingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_config: value,
    }
  ),
  withTaint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      taint: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withUpdateConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      update_config: value,
    }
  ),
  withLaunchTemplateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template+: converted,
    }
  ),
  withNodeRepairConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      node_repair_config+: converted,
    }
  ),
  withRemoteAccessMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_access+: converted,
    }
  ),
  withScalingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_config+: converted,
    }
  ),
  withTaintMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      taint+: converted,
    }
  ),
  withUpdateConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      update_config+: converted,
    }
  ),
}
