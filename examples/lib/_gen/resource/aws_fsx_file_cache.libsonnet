{
  local block = self,
  new(terraformName, fileCacheType, fileCacheTypeVersion, storageCapacity, subnetIds):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_file_cache",
          type:: "resource",
          attributes:: ["arn", "copy_tags_to_data_repository_associations", "data_repository_association_ids", "dns_name", "file_cache_id", "file_cache_type", "file_cache_type_version", "id", "kms_key_id", "network_interface_ids", "owner_id", "region", "security_group_ids", "storage_capacity", "subnet_ids", "tags", "tags_all", "vpc_id"],
        },
      },
    }
    + block.withFileCacheType(fileCacheType)
    + block.withFileCacheTypeVersion(fileCacheTypeVersion)
    + block.withStorageCapacity(storageCapacity)
    + block.withSubnetIds(subnetIds)
  ),
  withCopyTagsToDataRepositoryAssociations(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_data_repository_associations" expected to be of type "bool"';
    {
      copy_tags_to_data_repository_associations: converted,
    }
  ),
  withFileCacheType(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_cache_type" expected to be of type "string"';
    {
      file_cache_type: converted,
    }
  ),
  withFileCacheTypeVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_cache_type_version" expected to be of type "string"';
    {
      file_cache_type_version: converted,
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
  withStorageCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity" expected to be of type "number"';
    {
      storage_capacity: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  data_repository_association:: {
    local block = self,
    new(dataRepositoryPath, fileCachePath):: (
      {}
      + block.withDataRepositoryPath(dataRepositoryPath)
      + block.withFileCachePath(fileCachePath)
    ),
    withDataRepositoryPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_repository_path" expected to be of type "string"';
      {
        data_repository_path: converted,
      }
    ),
    withDataRepositorySubdirectories(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_repository_subdirectories" expected to be of type "set"';
      {
        data_repository_subdirectories: converted,
      }
    ),
    withDataRepositorySubdirectoriesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_repository_subdirectories" expected to be of type "set"';
      {
        data_repository_subdirectories+: converted,
      }
    ),
    withFileCachePath(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_cache_path" expected to be of type "string"';
      {
        file_cache_path: converted,
      }
    ),
    withTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    nfs:: {
      local block = self,
      new(version):: (
        {}
        + block.withVersion(version)
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
      withVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"version" expected to be of type "string"';
        {
          version: converted,
        }
      ),
    },
    withNfs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs: value,
      }
    ),
    withNfsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs+: converted,
      }
    ),
  },
  lustre_configuration:: {
    local block = self,
    new(deploymentType, perUnitStorageThroughput):: (
      {}
      + block.withDeploymentType(deploymentType)
      + block.withPerUnitStorageThroughput(perUnitStorageThroughput)
    ),
    withDeploymentType(value):: (
      local converted = value;
      assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
      {
        deployment_type: converted,
      }
    ),
    withPerUnitStorageThroughput(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"per_unit_storage_throughput" expected to be of type "number"';
      {
        per_unit_storage_throughput: converted,
      }
    ),
    withWeeklyMaintenanceStartTime(value):: (
      local converted = value;
      assert std.isString(converted) : '"weekly_maintenance_start_time" expected to be of type "string"';
      {
        weekly_maintenance_start_time: converted,
      }
    ),
    metadata_configuration:: {
      local block = self,
      new(storageCapacity):: (
        {}
        + block.withStorageCapacity(storageCapacity)
      ),
      withStorageCapacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"storage_capacity" expected to be of type "number"';
        {
          storage_capacity: converted,
        }
      ),
    },
    withMetadataConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metadata_configuration: value,
      }
    ),
    withMetadataConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metadata_configuration+: converted,
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
  withDataRepositoryAssociation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_repository_association: value,
    }
  ),
  withLustreConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lustre_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDataRepositoryAssociationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_repository_association+: converted,
    }
  ),
  withLustreConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lustre_configuration+: converted,
    }
  ),
}
