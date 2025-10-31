{
  local block = self,
  new(terraformName, dataRepositoryPath, fileSystemId, fileSystemPath):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_data_repository_association",
          type:: "resource",
          attributes:: ["arn", "association_id", "batch_import_meta_data_on_create", "data_repository_path", "delete_data_in_filesystem", "file_system_id", "file_system_path", "id", "imported_file_chunk_size", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDataRepositoryPath(dataRepositoryPath)
    + block.withFileSystemId(fileSystemId)
    + block.withFileSystemPath(fileSystemPath)
  ),
  withBatchImportMetaDataOnCreate(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"batch_import_meta_data_on_create" expected to be of type "bool"';
    {
      batch_import_meta_data_on_create: converted,
    }
  ),
  withDataRepositoryPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_repository_path" expected to be of type "string"';
    {
      data_repository_path: converted,
    }
  ),
  withDeleteDataInFilesystem(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_data_in_filesystem" expected to be of type "bool"';
    {
      delete_data_in_filesystem: converted,
    }
  ),
  withFileSystemId(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
    }
  ),
  withFileSystemPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_path" expected to be of type "string"';
    {
      file_system_path: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImportedFileChunkSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"imported_file_chunk_size" expected to be of type "number"';
    {
      imported_file_chunk_size: converted,
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
  s3:: {
    local block = self,
    new():: (
      {}
    ),
    auto_export_policy:: {
      local block = self,
      new():: (
        {}
      ),
      withEvents(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"events" expected to be of type "list"';
        {
          events: converted,
        }
      ),
      withEventsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"events" expected to be of type "list"';
        {
          events+: converted,
        }
      ),
    },
    auto_import_policy:: {
      local block = self,
      new():: (
        {}
      ),
      withEvents(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"events" expected to be of type "list"';
        {
          events: converted,
        }
      ),
      withEventsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"events" expected to be of type "list"';
        {
          events+: converted,
        }
      ),
    },
    withAutoExportPolicy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_export_policy: value,
      }
    ),
    withAutoImportPolicy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_import_policy: value,
      }
    ),
    withAutoExportPolicyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_export_policy+: converted,
      }
    ),
    withAutoImportPolicyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_import_policy+: converted,
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
  withS3(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withS3Mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3+: converted,
    }
  ),
}
