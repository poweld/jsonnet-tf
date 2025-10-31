{
  local block = self,
  new(terraformName, inputBucket, role):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elastictranscoder_pipeline",
          type:: "resource",
          attributes:: ["arn", "aws_kms_key_arn", "id", "input_bucket", "name", "output_bucket", "region", "role"],
        },
      },
    }
    + block.withInputBucket(inputBucket)
    + block.withRole(role)
  ),
  withAwsKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_kms_key_arn" expected to be of type "string"';
    {
      aws_kms_key_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInputBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_bucket" expected to be of type "string"';
    {
      input_bucket: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOutputBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"output_bucket" expected to be of type "string"';
    {
      output_bucket: converted,
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
  withRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  content_config:: {
    local block = self,
    new():: (
      {}
    ),
    withBucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    withStorageClass(value):: (
      local converted = value;
      assert std.isString(converted) : '"storage_class" expected to be of type "string"';
      {
        storage_class: converted,
      }
    ),
  },
  content_config_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    withAccess(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"access" expected to be of type "list"';
      {
        access: converted,
      }
    ),
    withAccessMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"access" expected to be of type "list"';
      {
        access+: converted,
      }
    ),
    withGrantee(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee" expected to be of type "string"';
      {
        grantee: converted,
      }
    ),
    withGranteeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee_type" expected to be of type "string"';
      {
        grantee_type: converted,
      }
    ),
  },
  notifications:: {
    local block = self,
    new():: (
      {}
    ),
    withCompleted(value):: (
      local converted = value;
      assert std.isString(converted) : '"completed" expected to be of type "string"';
      {
        completed: converted,
      }
    ),
    withError(value):: (
      local converted = value;
      assert std.isString(converted) : '"error" expected to be of type "string"';
      {
        "error": converted,
      }
    ),
    withProgressing(value):: (
      local converted = value;
      assert std.isString(converted) : '"progressing" expected to be of type "string"';
      {
        progressing: converted,
      }
    ),
    withWarning(value):: (
      local converted = value;
      assert std.isString(converted) : '"warning" expected to be of type "string"';
      {
        warning: converted,
      }
    ),
  },
  thumbnail_config:: {
    local block = self,
    new():: (
      {}
    ),
    withBucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    withStorageClass(value):: (
      local converted = value;
      assert std.isString(converted) : '"storage_class" expected to be of type "string"';
      {
        storage_class: converted,
      }
    ),
  },
  thumbnail_config_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    withAccess(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"access" expected to be of type "list"';
      {
        access: converted,
      }
    ),
    withAccessMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"access" expected to be of type "list"';
      {
        access+: converted,
      }
    ),
    withGrantee(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee" expected to be of type "string"';
      {
        grantee: converted,
      }
    ),
    withGranteeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee_type" expected to be of type "string"';
      {
        grantee_type: converted,
      }
    ),
  },
  withContentConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_config: value,
    }
  ),
  withContentConfigPermissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_config_permissions: value,
    }
  ),
  withNotifications(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notifications: value,
    }
  ),
  withThumbnailConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_config: value,
    }
  ),
  withThumbnailConfigPermissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_config_permissions: value,
    }
  ),
  withContentConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_config+: converted,
    }
  ),
  withContentConfigPermissionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_config_permissions+: converted,
    }
  ),
  withNotificationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notifications+: converted,
    }
  ),
  withThumbnailConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_config+: converted,
    }
  ),
  withThumbnailConfigPermissionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnail_config_permissions+: converted,
    }
  ),
}
