{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_security_configuration",
          type:: "resource",
          attributes:: ["id", "name", "region"],
        },
      },
    }
    + block.withName(name)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_encryption:: {
      local block = self,
      new():: (
        {}
      ),
      withCloudwatchEncryptionMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"cloudwatch_encryption_mode" expected to be of type "string"';
        {
          cloudwatch_encryption_mode: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
    },
    job_bookmarks_encryption:: {
      local block = self,
      new():: (
        {}
      ),
      withJobBookmarksEncryptionMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"job_bookmarks_encryption_mode" expected to be of type "string"';
        {
          job_bookmarks_encryption_mode: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
    },
    s3_encryption:: {
      local block = self,
      new():: (
        {}
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withS3EncryptionMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_encryption_mode" expected to be of type "string"';
        {
          s3_encryption_mode: converted,
        }
      ),
    },
    withCloudwatchEncryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_encryption: value,
      }
    ),
    withJobBookmarksEncryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_bookmarks_encryption: value,
      }
    ),
    withS3Encryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_encryption: value,
      }
    ),
    withCloudwatchEncryptionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_encryption+: converted,
      }
    ),
    withJobBookmarksEncryptionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_bookmarks_encryption+: converted,
      }
    ),
    withS3EncryptionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_encryption+: converted,
      }
    ),
  },
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
}
