{
  local block = self,
  new(terraformName, deploymentType, preferredSubnetId, storageCapacity, subnetIds):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_ontap_file_system",
          type:: "resource",
          attributes:: ["arn", "automatic_backup_retention_days", "daily_automatic_backup_start_time", "deployment_type", "dns_name", "endpoint_ip_address_range", "endpoints", "fsx_admin_password", "ha_pairs", "id", "kms_key_id", "network_interface_ids", "owner_id", "preferred_subnet_id", "region", "route_table_ids", "security_group_ids", "storage_capacity", "storage_type", "subnet_ids", "tags", "tags_all", "throughput_capacity", "throughput_capacity_per_ha_pair", "vpc_id", "weekly_maintenance_start_time"],
        },
      },
    }
    + block.withDeploymentType(deploymentType)
    + block.withPreferredSubnetId(preferredSubnetId)
    + block.withStorageCapacity(storageCapacity)
    + block.withSubnetIds(subnetIds)
  ),
  withAutomaticBackupRetentionDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"automatic_backup_retention_days" expected to be of type "number"';
    {
      automatic_backup_retention_days: converted,
    }
  ),
  withDailyAutomaticBackupStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"daily_automatic_backup_start_time" expected to be of type "string"';
    {
      daily_automatic_backup_start_time: converted,
    }
  ),
  withDeploymentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
    {
      deployment_type: converted,
    }
  ),
  withEndpointIpAddressRange(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_ip_address_range" expected to be of type "string"';
    {
      endpoint_ip_address_range: converted,
    }
  ),
  withFsxAdminPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"fsx_admin_password" expected to be of type "string"';
    {
      fsx_admin_password: converted,
    }
  ),
  withHaPairs(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ha_pairs" expected to be of type "number"';
    {
      ha_pairs: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withPreferredSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_subnet_id" expected to be of type "string"';
    {
      preferred_subnet_id: converted,
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
  withRouteTableIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids: converted,
    }
  ),
  withRouteTableIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids+: converted,
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
  withStorageCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity" expected to be of type "number"';
    {
      storage_capacity: converted,
    }
  ),
  withStorageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
    }
  ),
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
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
  withThroughputCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"throughput_capacity" expected to be of type "number"';
    {
      throughput_capacity: converted,
    }
  ),
  withThroughputCapacityPerHaPair(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"throughput_capacity_per_ha_pair" expected to be of type "number"';
    {
      throughput_capacity_per_ha_pair: converted,
    }
  ),
  withWeeklyMaintenanceStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"weekly_maintenance_start_time" expected to be of type "string"';
    {
      weekly_maintenance_start_time: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  disk_iops_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withIops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
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
  withDiskIopsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDiskIopsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration+: converted,
    }
  ),
}
