{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_session_logger",
          type:: "resource",
          attributes:: ["additional_encryption_context", "associated_portal_arns", "customer_managed_key", "display_name", "region", "session_logger_arn", "tags", "tags_all"],
        },
      },
    }
  ),
  withAdditionalEncryptionContext(value):: (
    local converted = value;
    assert std.isObject(converted) : '"additional_encryption_context" expected to be of type "map"';
    {
      additional_encryption_context: converted,
    }
  ),
  withCustomerManagedKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_managed_key" expected to be of type "string"';
    {
      customer_managed_key: converted,
    }
  ),
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  event_filter:: {
    local block = self,
    new():: (
      {}
    ),
    withInclude(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include" expected to be of type "set"';
      {
        include: converted,
      }
    ),
    withIncludeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include" expected to be of type "set"';
      {
        include+: converted,
      }
    ),
    all:: {
      local block = self,
      new():: (
        {}
      ),
    },
    withAll(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        all: value,
      }
    ),
    withAllMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        all+: converted,
      }
    ),
  },
  log_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3:: {
      local block = self,
      new(bucket, folderStructure, logFileFormat):: (
        {}
        + block.withBucket(bucket)
        + block.withFolderStructure(folderStructure)
        + block.withLogFileFormat(logFileFormat)
      ),
      withBucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      withBucketOwner(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner" expected to be of type "string"';
        {
          bucket_owner: converted,
        }
      ),
      withFolderStructure(value):: (
        local converted = value;
        assert std.isString(converted) : '"folder_structure" expected to be of type "string"';
        {
          folder_structure: converted,
        }
      ),
      withKeyPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
        {
          key_prefix: converted,
        }
      ),
      withLogFileFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_file_format" expected to be of type "string"';
        {
          log_file_format: converted,
        }
      ),
    },
    withS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
  },
  withEventFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_filter: value,
    }
  ),
  withLogConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration: value,
    }
  ),
  withEventFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_filter+: converted,
    }
  ),
  withLogConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration+: converted,
    }
  ),
}
