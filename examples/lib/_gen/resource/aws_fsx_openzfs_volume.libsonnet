{
  local block = self,
  new(terraformName, name, parentVolumeId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_openzfs_volume",
          type:: "resource",
          attributes:: ["arn", "copy_tags_to_snapshots", "data_compression_type", "delete_volume_options", "id", "name", "parent_volume_id", "read_only", "record_size_kib", "region", "storage_capacity_quota_gib", "storage_capacity_reservation_gib", "tags", "tags_all", "volume_type"],
        },
      },
    }
    + block.withName(name)
    + block.withParentVolumeId(parentVolumeId)
  ),
  withCopyTagsToSnapshots(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_snapshots" expected to be of type "bool"';
    {
      copy_tags_to_snapshots: converted,
    }
  ),
  withDataCompressionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_compression_type" expected to be of type "string"';
    {
      data_compression_type: converted,
    }
  ),
  withDeleteVolumeOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"delete_volume_options" expected to be of type "list"';
    {
      delete_volume_options: converted,
    }
  ),
  withDeleteVolumeOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"delete_volume_options" expected to be of type "list"';
    {
      delete_volume_options+: converted,
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
  withParentVolumeId(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_volume_id" expected to be of type "string"';
    {
      parent_volume_id: converted,
    }
  ),
  withReadOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"read_only" expected to be of type "bool"';
    {
      read_only: converted,
    }
  ),
  withRecordSizeKib(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"record_size_kib" expected to be of type "number"';
    {
      record_size_kib: converted,
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
  withStorageCapacityQuotaGib(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity_quota_gib" expected to be of type "number"';
    {
      storage_capacity_quota_gib: converted,
    }
  ),
  withStorageCapacityReservationGib(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity_reservation_gib" expected to be of type "number"';
    {
      storage_capacity_reservation_gib: converted,
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
  withVolumeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_type" expected to be of type "string"';
    {
      volume_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  nfs_exports:: {
    local block = self,
    new():: (
      {}
    ),
    client_configurations:: {
      local block = self,
      new(clients, options):: (
        {}
        + block.withClients(clients)
        + block.withOptions(options)
      ),
      withClients(value):: (
        local converted = value;
        assert std.isString(converted) : '"clients" expected to be of type "string"';
        {
          clients: converted,
        }
      ),
      withOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"options" expected to be of type "list"';
        {
          options: converted,
        }
      ),
      withOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"options" expected to be of type "list"';
        {
          options+: converted,
        }
      ),
    },
    withClientConfigurations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        client_configurations: value,
      }
    ),
    withClientConfigurationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        client_configurations+: converted,
      }
    ),
  },
  origin_snapshot:: {
    local block = self,
    new(copyStrategy, snapshotArn):: (
      {}
      + block.withCopyStrategy(copyStrategy)
      + block.withSnapshotArn(snapshotArn)
    ),
    withCopyStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"copy_strategy" expected to be of type "string"';
      {
        copy_strategy: converted,
      }
    ),
    withSnapshotArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"snapshot_arn" expected to be of type "string"';
      {
        snapshot_arn: converted,
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
  user_and_group_quotas:: {
    local block = self,
    new(id, storageCapacityQuotaGib, type):: (
      {}
      + block.withId(id)
      + block.withStorageCapacityQuotaGib(storageCapacityQuotaGib)
      + block.withType(type)
    ),
    withId(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"id" expected to be of type "number"';
      {
        id: converted,
      }
    ),
    withStorageCapacityQuotaGib(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"storage_capacity_quota_gib" expected to be of type "number"';
      {
        storage_capacity_quota_gib: converted,
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
  withNfsExports(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      nfs_exports: value,
    }
  ),
  withOriginSnapshot(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin_snapshot: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withUserAndGroupQuotas(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_and_group_quotas: value,
    }
  ),
  withNfsExportsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      nfs_exports+: converted,
    }
  ),
  withOriginSnapshotMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin_snapshot+: converted,
    }
  ),
  withUserAndGroupQuotasMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_and_group_quotas+: converted,
    }
  ),
}
