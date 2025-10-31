{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_athena_workgroup",
          type:: "resource",
          attributes:: ["arn", "description", "force_destroy", "id", "name", "region", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withState(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withBytesScannedCutoffPerQuery(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bytes_scanned_cutoff_per_query" expected to be of type "number"';
      {
        bytes_scanned_cutoff_per_query: converted,
      }
    ),
    withEnforceWorkgroupConfiguration(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enforce_workgroup_configuration" expected to be of type "bool"';
      {
        enforce_workgroup_configuration: converted,
      }
    ),
    withExecutionRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role" expected to be of type "string"';
      {
        execution_role: converted,
      }
    ),
    withPublishCloudwatchMetricsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"publish_cloudwatch_metrics_enabled" expected to be of type "bool"';
      {
        publish_cloudwatch_metrics_enabled: converted,
      }
    ),
    withRequesterPaysEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"requester_pays_enabled" expected to be of type "bool"';
      {
        requester_pays_enabled: converted,
      }
    ),
    engine_version:: {
      local block = self,
      new():: (
        {}
      ),
      withSelectedEngineVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"selected_engine_version" expected to be of type "string"';
        {
          selected_engine_version: converted,
        }
      ),
    },
    identity_center_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnableIdentityCenter(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_identity_center" expected to be of type "bool"';
        {
          enable_identity_center: converted,
        }
      ),
      withIdentityCenterInstanceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"identity_center_instance_arn" expected to be of type "string"';
        {
          identity_center_instance_arn: converted,
        }
      ),
    },
    result_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withExpectedBucketOwner(value):: (
        local converted = value;
        assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
        {
          expected_bucket_owner: converted,
        }
      ),
      withOutputLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_location" expected to be of type "string"';
        {
          output_location: converted,
        }
      ),
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
        new():: (
          {}
        ),
        withEncryptionOption(value):: (
          local converted = value;
          assert std.isString(converted) : '"encryption_option" expected to be of type "string"';
          {
            encryption_option: converted,
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
    },
    withEngineVersion(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        engine_version: value,
      }
    ),
    withIdentityCenterConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        identity_center_configuration: value,
      }
    ),
    withResultConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        result_configuration: value,
      }
    ),
    withEngineVersionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        engine_version+: converted,
      }
    ),
    withIdentityCenterConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        identity_center_configuration+: converted,
      }
    ),
    withResultConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        result_configuration+: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
