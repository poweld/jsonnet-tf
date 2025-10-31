{
  local block = self,
  new(terraformName, clusterIdentifier, nodeType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_cluster",
          type:: "resource",
          attributes:: ["allow_version_upgrade", "apply_immediately", "aqua_configuration_status", "arn", "automated_snapshot_retention_period", "availability_zone", "availability_zone_relocation_enabled", "cluster_identifier", "cluster_namespace_arn", "cluster_nodes", "cluster_parameter_group_name", "cluster_public_key", "cluster_revision_number", "cluster_subnet_group_name", "cluster_type", "cluster_version", "database_name", "default_iam_role_arn", "dns_name", "elastic_ip", "encrypted", "endpoint", "enhanced_vpc_routing", "final_snapshot_identifier", "iam_roles", "id", "kms_key_id", "maintenance_track_name", "manage_master_password", "manual_snapshot_retention_period", "master_password", "master_password_secret_arn", "master_password_secret_kms_key_id", "master_password_wo", "master_password_wo_version", "master_username", "multi_az", "node_type", "number_of_nodes", "owner_account", "port", "preferred_maintenance_window", "publicly_accessible", "region", "skip_final_snapshot", "snapshot_arn", "snapshot_cluster_identifier", "snapshot_identifier", "tags", "tags_all", "vpc_security_group_ids"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
    + block.withNodeType(nodeType)
  ),
  withAllowVersionUpgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_version_upgrade" expected to be of type "bool"';
    {
      allow_version_upgrade: converted,
    }
  ),
  withApplyImmediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_immediately" expected to be of type "bool"';
    {
      apply_immediately: converted,
    }
  ),
  withAquaConfigurationStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"aqua_configuration_status" expected to be of type "string"';
    {
      aqua_configuration_status: converted,
    }
  ),
  withAutomatedSnapshotRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"automated_snapshot_retention_period" expected to be of type "number"';
    {
      automated_snapshot_retention_period: converted,
    }
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withAvailabilityZoneRelocationEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"availability_zone_relocation_enabled" expected to be of type "bool"';
    {
      availability_zone_relocation_enabled: converted,
    }
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withClusterParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_parameter_group_name" expected to be of type "string"';
    {
      cluster_parameter_group_name: converted,
    }
  ),
  withClusterSubnetGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_subnet_group_name" expected to be of type "string"';
    {
      cluster_subnet_group_name: converted,
    }
  ),
  withClusterType(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_type" expected to be of type "string"';
    {
      cluster_type: converted,
    }
  ),
  withClusterVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_version" expected to be of type "string"';
    {
      cluster_version: converted,
    }
  ),
  withDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  withDefaultIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_iam_role_arn" expected to be of type "string"';
    {
      default_iam_role_arn: converted,
    }
  ),
  withElasticIp(value):: (
    local converted = value;
    assert std.isString(converted) : '"elastic_ip" expected to be of type "string"';
    {
      elastic_ip: converted,
    }
  ),
  withEncrypted(value):: (
    local converted = value;
    assert std.isString(converted) : '"encrypted" expected to be of type "string"';
    {
      encrypted: converted,
    }
  ),
  withEnhancedVpcRouting(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enhanced_vpc_routing" expected to be of type "bool"';
    {
      enhanced_vpc_routing: converted,
    }
  ),
  withFinalSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_identifier" expected to be of type "string"';
    {
      final_snapshot_identifier: converted,
    }
  ),
  withIamRoles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles: converted,
    }
  ),
  withIamRolesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles+: converted,
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
  withMaintenanceTrackName(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_track_name" expected to be of type "string"';
    {
      maintenance_track_name: converted,
    }
  ),
  withManageMasterPassword(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"manage_master_password" expected to be of type "bool"';
    {
      manage_master_password: converted,
    }
  ),
  withManualSnapshotRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"manual_snapshot_retention_period" expected to be of type "number"';
    {
      manual_snapshot_retention_period: converted,
    }
  ),
  withMasterPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_password" expected to be of type "string"';
    {
      master_password: converted,
    }
  ),
  withMasterPasswordSecretKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_password_secret_kms_key_id" expected to be of type "string"';
    {
      master_password_secret_kms_key_id: converted,
    }
  ),
  withMasterPasswordWo(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_password_wo" expected to be of type "string"';
    {
      master_password_wo: converted,
    }
  ),
  withMasterPasswordWoVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"master_password_wo_version" expected to be of type "number"';
    {
      master_password_wo_version: converted,
    }
  ),
  withMasterUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_username" expected to be of type "string"';
    {
      master_username: converted,
    }
  ),
  withMultiAz(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
    }
  ),
  withNodeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  withNumberOfNodes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_nodes" expected to be of type "number"';
    {
      number_of_nodes: converted,
    }
  ),
  withOwnerAccount(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account" expected to be of type "string"';
    {
      owner_account: converted,
    }
  ),
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  withPreferredMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
    {
      preferred_maintenance_window: converted,
    }
  ),
  withPubliclyAccessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  withSkipFinalSnapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_snapshot" expected to be of type "bool"';
    {
      skip_final_snapshot: converted,
    }
  ),
  withSnapshotArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_arn" expected to be of type "string"';
    {
      snapshot_arn: converted,
    }
  ),
  withSnapshotClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_cluster_identifier" expected to be of type "string"';
    {
      snapshot_cluster_identifier: converted,
    }
  ),
  withSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_identifier" expected to be of type "string"';
    {
      snapshot_identifier: converted,
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
  withVpcSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  withVpcSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
