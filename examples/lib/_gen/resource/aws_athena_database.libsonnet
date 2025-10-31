{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_athena_database",
          type:: "resource",
          attributes:: ["bucket", "comment", "expected_bucket_owner", "force_destroy", "id", "name", "properties", "region", "workgroup"],
        },
      },
    }
    + block.withName(name)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withExpectedBucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
    }
  ),
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
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
  withProperties(value):: (
    local converted = value;
    assert std.isObject(converted) : '"properties" expected to be of type "map"';
    {
      properties: converted,
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
  withWorkgroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup" expected to be of type "string"';
    {
      workgroup: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  acl_configuration:: {
    local block = self,
    new(s3AclOption):: (
      {}
      + block.withS3AclOption(s3AclOption)
    ),
    withS3AclOption(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_acl_option" expected to be of type "string"';
      {
        s3_acl_option: converted,
      }
    ),
  },
  encryption_configuration:: {
    local block = self,
    new(encryptionOption):: (
      {}
      + block.withEncryptionOption(encryptionOption)
    ),
    withEncryptionOption(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_option" expected to be of type "string"';
      {
        encryption_option: converted,
      }
    ),
    withKmsKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key" expected to be of type "string"';
      {
        kms_key: converted,
      }
    ),
  },
  withAclConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      acl_configuration: value,
    }
  ),
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withAclConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      acl_configuration+: converted,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
}
