{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ebs_snapshot_import",
          type:: "resource",
          attributes:: ["arn", "data_encryption_key_id", "description", "encrypted", "id", "kms_key_id", "outpost_arn", "owner_alias", "owner_id", "permanent_restore", "region", "role_name", "storage_tier", "tags", "tags_all", "temporary_restore_days", "volume_id", "volume_size"],
        },
      },
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEncrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
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
  withPermanentRestore(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"permanent_restore" expected to be of type "bool"';
    {
      permanent_restore: converted,
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
  withRoleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_name" expected to be of type "string"';
    {
      role_name: converted,
    }
  ),
  withStorageTier(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_tier" expected to be of type "string"';
    {
      storage_tier: converted,
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
  withTemporaryRestoreDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"temporary_restore_days" expected to be of type "number"';
    {
      temporary_restore_days: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  client_data:: {
    local block = self,
    new():: (
      {}
    ),
    withComment(value):: (
      local converted = value;
      assert std.isString(converted) : '"comment" expected to be of type "string"';
      {
        comment: converted,
      }
    ),
    withUploadEnd(value):: (
      local converted = value;
      assert std.isString(converted) : '"upload_end" expected to be of type "string"';
      {
        upload_end: converted,
      }
    ),
    withUploadSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"upload_size" expected to be of type "number"';
      {
        upload_size: converted,
      }
    ),
    withUploadStart(value):: (
      local converted = value;
      assert std.isString(converted) : '"upload_start" expected to be of type "string"';
      {
        upload_start: converted,
      }
    ),
  },
  disk_container:: {
    local block = self,
    new(format):: (
      {}
      + block.withFormat(format)
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"format" expected to be of type "string"';
      {
        format: converted,
      }
    ),
    withUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
      }
    ),
    user_bucket:: {
      local block = self,
      new(s3Bucket, s3Key):: (
        {}
        + block.withS3Bucket(s3Bucket)
        + block.withS3Key(s3Key)
      ),
      withS3Bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
        {
          s3_bucket: converted,
        }
      ),
      withS3Key(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_key" expected to be of type "string"';
        {
          s3_key: converted,
        }
      ),
    },
    withUserBucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_bucket: value,
      }
    ),
    withUserBucketMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_bucket+: converted,
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
  },
  withClientData(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_data: value,
    }
  ),
  withDiskContainer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_container: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withClientDataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_data+: converted,
    }
  ),
  withDiskContainerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_container+: converted,
    }
  ),
}
