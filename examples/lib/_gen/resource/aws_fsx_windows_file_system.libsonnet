{
  local block = self,
  new(terraformName, subnetIds, throughputCapacity):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_windows_file_system",
          type:: "resource",
          attributes:: ["active_directory_id", "aliases", "arn", "automatic_backup_retention_days", "backup_id", "copy_tags_to_backups", "daily_automatic_backup_start_time", "deployment_type", "dns_name", "final_backup_tags", "id", "kms_key_id", "network_interface_ids", "owner_id", "preferred_file_server_ip", "preferred_subnet_id", "region", "remote_administration_endpoint", "security_group_ids", "skip_final_backup", "storage_capacity", "storage_type", "subnet_ids", "tags", "tags_all", "throughput_capacity", "vpc_id", "weekly_maintenance_start_time"],
        },
      },
    }
    + block.withSubnetIds(subnetIds)
    + block.withThroughputCapacity(throughputCapacity)
  ),
  withActiveDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"active_directory_id" expected to be of type "string"';
    {
      active_directory_id: converted,
    }
  ),
  withAliases(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases: converted,
    }
  ),
  withAliasesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases+: converted,
    }
  ),
  withAutomaticBackupRetentionDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"automatic_backup_retention_days" expected to be of type "number"';
    {
      automatic_backup_retention_days: converted,
    }
  ),
  withBackupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_id" expected to be of type "string"';
    {
      backup_id: converted,
    }
  ),
  withCopyTagsToBackups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_backups" expected to be of type "bool"';
    {
      copy_tags_to_backups: converted,
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
  withFinalBackupTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"final_backup_tags" expected to be of type "map"';
    {
      final_backup_tags: converted,
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
  withSkipFinalBackup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_backup" expected to be of type "bool"';
    {
      skip_final_backup: converted,
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
  audit_log_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAuditLogDestination(value):: (
      local converted = value;
      assert std.isString(converted) : '"audit_log_destination" expected to be of type "string"';
      {
        audit_log_destination: converted,
      }
    ),
    withFileAccessAuditLogLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_access_audit_log_level" expected to be of type "string"';
      {
        file_access_audit_log_level: converted,
      }
    ),
    withFileShareAccessAuditLogLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_share_access_audit_log_level" expected to be of type "string"';
      {
        file_share_access_audit_log_level: converted,
      }
    ),
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
  self_managed_active_directory:: {
    local block = self,
    new(dnsIps, domainName, password, username):: (
      {}
      + block.withDnsIps(dnsIps)
      + block.withDomainName(domainName)
      + block.withPassword(password)
      + block.withUsername(username)
    ),
    withDnsIps(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
      {
        dns_ips: converted,
      }
    ),
    withDnsIpsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
      {
        dns_ips+: converted,
      }
    ),
    withDomainName(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    withFileSystemAdministratorsGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_system_administrators_group" expected to be of type "string"';
      {
        file_system_administrators_group: converted,
      }
    ),
    withOrganizationalUnitDistinguishedName(value):: (
      local converted = value;
      assert std.isString(converted) : '"organizational_unit_distinguished_name" expected to be of type "string"';
      {
        organizational_unit_distinguished_name: converted,
      }
    ),
    withPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
      }
    ),
    withUsername(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
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
  withAuditLogConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audit_log_configuration: value,
    }
  ),
  withDiskIopsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration: value,
    }
  ),
  withSelfManagedActiveDirectory(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_active_directory: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAuditLogConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audit_log_configuration+: converted,
    }
  ),
  withDiskIopsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration+: converted,
    }
  ),
  withSelfManagedActiveDirectoryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_active_directory+: converted,
    }
  ),
}
