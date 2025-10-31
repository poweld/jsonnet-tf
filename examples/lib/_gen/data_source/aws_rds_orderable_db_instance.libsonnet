{
  local block = self,
  new(terraformName, engine):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_orderable_db_instance",
          type:: "data",
          attributes:: ["availability_zone_group", "availability_zones", "engine", "engine_latest_version", "engine_version", "id", "instance_class", "license_model", "max_iops_per_db_instance", "max_iops_per_gib", "max_storage_size", "min_iops_per_db_instance", "min_iops_per_gib", "min_storage_size", "multi_az_capable", "outpost_capable", "preferred_engine_versions", "preferred_instance_classes", "read_replica_capable", "region", "storage_type", "supported_engine_modes", "supported_network_types", "supports_clusters", "supports_enhanced_monitoring", "supports_global_databases", "supports_iam_database_authentication", "supports_iops", "supports_kerberos_authentication", "supports_multi_az", "supports_performance_insights", "supports_storage_autoscaling", "supports_storage_encryption", "vpc"],
        },
      },
    }
    + block.withEngine(engine)
  ),
  withAvailabilityZoneGroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_group" expected to be of type "string"';
    {
      availability_zone_group: converted,
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withEngineLatestVersion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"engine_latest_version" expected to be of type "bool"';
    {
      engine_latest_version: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_class" expected to be of type "string"';
    {
      instance_class: converted,
    }
  ),
  withLicenseModel(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_model" expected to be of type "string"';
    {
      license_model: converted,
    }
  ),
  withPreferredEngineVersions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_engine_versions" expected to be of type "list"';
    {
      preferred_engine_versions: converted,
    }
  ),
  withPreferredEngineVersionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_engine_versions" expected to be of type "list"';
    {
      preferred_engine_versions+: converted,
    }
  ),
  withPreferredInstanceClasses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_instance_classes" expected to be of type "list"';
    {
      preferred_instance_classes: converted,
    }
  ),
  withPreferredInstanceClassesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_instance_classes" expected to be of type "list"';
    {
      preferred_instance_classes+: converted,
    }
  ),
  withReadReplicaCapable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"read_replica_capable" expected to be of type "bool"';
    {
      read_replica_capable: converted,
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
  withStorageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
    }
  ),
  withSupportedEngineModes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_engine_modes" expected to be of type "list"';
    {
      supported_engine_modes: converted,
    }
  ),
  withSupportedEngineModesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_engine_modes" expected to be of type "list"';
    {
      supported_engine_modes+: converted,
    }
  ),
  withSupportedNetworkTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_network_types" expected to be of type "list"';
    {
      supported_network_types: converted,
    }
  ),
  withSupportedNetworkTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_network_types" expected to be of type "list"';
    {
      supported_network_types+: converted,
    }
  ),
  withSupportsClusters(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_clusters" expected to be of type "bool"';
    {
      supports_clusters: converted,
    }
  ),
  withSupportsEnhancedMonitoring(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_enhanced_monitoring" expected to be of type "bool"';
    {
      supports_enhanced_monitoring: converted,
    }
  ),
  withSupportsGlobalDatabases(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_global_databases" expected to be of type "bool"';
    {
      supports_global_databases: converted,
    }
  ),
  withSupportsIamDatabaseAuthentication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_iam_database_authentication" expected to be of type "bool"';
    {
      supports_iam_database_authentication: converted,
    }
  ),
  withSupportsIops(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_iops" expected to be of type "bool"';
    {
      supports_iops: converted,
    }
  ),
  withSupportsKerberosAuthentication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_kerberos_authentication" expected to be of type "bool"';
    {
      supports_kerberos_authentication: converted,
    }
  ),
  withSupportsMultiAz(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_multi_az" expected to be of type "bool"';
    {
      supports_multi_az: converted,
    }
  ),
  withSupportsPerformanceInsights(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_performance_insights" expected to be of type "bool"';
    {
      supports_performance_insights: converted,
    }
  ),
  withSupportsStorageAutoscaling(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_storage_autoscaling" expected to be of type "bool"';
    {
      supports_storage_autoscaling: converted,
    }
  ),
  withSupportsStorageEncryption(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"supports_storage_encryption" expected to be of type "bool"';
    {
      supports_storage_encryption: converted,
    }
  ),
  withVpc(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"vpc" expected to be of type "bool"';
    {
      vpc: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
