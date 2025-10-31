{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_imagebuilder_distribution_configuration",
          type:: "resource",
          attributes:: ["arn", "date_created", "date_updated", "description", "id", "name", "region", "tags", "tags_all"],
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
  distribution:: {
    local block = self,
    new(region):: (
      {}
      + block.withRegion(region)
    ),
    withLicenseConfigurationArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"license_configuration_arns" expected to be of type "set"';
      {
        license_configuration_arns: converted,
      }
    ),
    withLicenseConfigurationArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"license_configuration_arns" expected to be of type "set"';
      {
        license_configuration_arns+: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    ami_distribution_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withAmiTags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"ami_tags" expected to be of type "map"';
        {
          ami_tags: converted,
        }
      ),
      withDescription(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withTargetAccountIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_account_ids" expected to be of type "set"';
        {
          target_account_ids: converted,
        }
      ),
      withTargetAccountIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_account_ids" expected to be of type "set"';
        {
          target_account_ids+: converted,
        }
      ),
      launch_permission:: {
        local block = self,
        new():: (
          {}
        ),
        withOrganizationArns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organization_arns" expected to be of type "set"';
          {
            organization_arns: converted,
          }
        ),
        withOrganizationArnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organization_arns" expected to be of type "set"';
          {
            organization_arns+: converted,
          }
        ),
        withOrganizationalUnitArns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_arns" expected to be of type "set"';
          {
            organizational_unit_arns: converted,
          }
        ),
        withOrganizationalUnitArnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_arns" expected to be of type "set"';
          {
            organizational_unit_arns+: converted,
          }
        ),
        withUserGroups(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_groups" expected to be of type "set"';
          {
            user_groups: converted,
          }
        ),
        withUserGroupsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_groups" expected to be of type "set"';
          {
            user_groups+: converted,
          }
        ),
        withUserIds(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_ids" expected to be of type "set"';
          {
            user_ids: converted,
          }
        ),
        withUserIdsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_ids" expected to be of type "set"';
          {
            user_ids+: converted,
          }
        ),
      },
      withLaunchPermission(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_permission: value,
        }
      ),
      withLaunchPermissionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_permission+: converted,
        }
      ),
    },
    container_distribution_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withContainerTags(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"container_tags" expected to be of type "set"';
        {
          container_tags: converted,
        }
      ),
      withContainerTagsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"container_tags" expected to be of type "set"';
        {
          container_tags+: converted,
        }
      ),
      withDescription(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      target_repository:: {
        local block = self,
        new(repositoryName, service):: (
          {}
          + block.withRepositoryName(repositoryName)
          + block.withService(service)
        ),
        withRepositoryName(value):: (
          local converted = value;
          assert std.isString(converted) : '"repository_name" expected to be of type "string"';
          {
            repository_name: converted,
          }
        ),
        withService(value):: (
          local converted = value;
          assert std.isString(converted) : '"service" expected to be of type "string"';
          {
            service: converted,
          }
        ),
      },
      withTargetRepository(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_repository: value,
        }
      ),
      withTargetRepositoryMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_repository+: converted,
        }
      ),
    },
    fast_launch_configuration:: {
      local block = self,
      new(accountId, enabled):: (
        {}
        + block.withAccountId(accountId)
        + block.withEnabled(enabled)
      ),
      withAccountId(value):: (
        local converted = value;
        assert std.isString(converted) : '"account_id" expected to be of type "string"';
        {
          account_id: converted,
        }
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withMaxParallelLaunches(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_parallel_launches" expected to be of type "number"';
        {
          max_parallel_launches: converted,
        }
      ),
      launch_template:: {
        local block = self,
        new():: (
          {}
        ),
        withLaunchTemplateId(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
          {
            launch_template_id: converted,
          }
        ),
        withLaunchTemplateName(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_name" expected to be of type "string"';
          {
            launch_template_name: converted,
          }
        ),
        withLaunchTemplateVersion(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_version" expected to be of type "string"';
          {
            launch_template_version: converted,
          }
        ),
      },
      snapshot_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withTargetResourceCount(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"target_resource_count" expected to be of type "number"';
          {
            target_resource_count: converted,
          }
        ),
      },
      withLaunchTemplate(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_template: value,
        }
      ),
      withSnapshotConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snapshot_configuration: value,
        }
      ),
      withLaunchTemplateMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_template+: converted,
        }
      ),
      withSnapshotConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snapshot_configuration+: converted,
        }
      ),
    },
    launch_template_configuration:: {
      local block = self,
      new(launchTemplateId):: (
        {}
        + block.withLaunchTemplateId(launchTemplateId)
      ),
      withAccountId(value):: (
        local converted = value;
        assert std.isString(converted) : '"account_id" expected to be of type "string"';
        {
          account_id: converted,
        }
      ),
      withDefault(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"default" expected to be of type "bool"';
        {
          default: converted,
        }
      ),
      withLaunchTemplateId(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
        {
          launch_template_id: converted,
        }
      ),
    },
    s3_export_configuration:: {
      local block = self,
      new(diskImageFormat, roleName, s3Bucket):: (
        {}
        + block.withDiskImageFormat(diskImageFormat)
        + block.withRoleName(roleName)
        + block.withS3Bucket(s3Bucket)
      ),
      withDiskImageFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"disk_image_format" expected to be of type "string"';
        {
          disk_image_format: converted,
        }
      ),
      withRoleName(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_name" expected to be of type "string"';
        {
          role_name: converted,
        }
      ),
      withS3Bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
        {
          s3_bucket: converted,
        }
      ),
      withS3Prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
        {
          s3_prefix: converted,
        }
      ),
    },
    ssm_parameter_configuration:: {
      local block = self,
      new(parameterName):: (
        {}
        + block.withParameterName(parameterName)
      ),
      withAmiAccountId(value):: (
        local converted = value;
        assert std.isString(converted) : '"ami_account_id" expected to be of type "string"';
        {
          ami_account_id: converted,
        }
      ),
      withDataType(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_type" expected to be of type "string"';
        {
          data_type: converted,
        }
      ),
      withParameterName(value):: (
        local converted = value;
        assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
        {
          parameter_name: converted,
        }
      ),
    },
    withAmiDistributionConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ami_distribution_configuration: value,
      }
    ),
    withContainerDistributionConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_distribution_configuration: value,
      }
    ),
    withFastLaunchConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fast_launch_configuration: value,
      }
    ),
    withLaunchTemplateConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template_configuration: value,
      }
    ),
    withS3ExportConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_export_configuration: value,
      }
    ),
    withSsmParameterConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_parameter_configuration: value,
      }
    ),
    withAmiDistributionConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ami_distribution_configuration+: converted,
      }
    ),
    withContainerDistributionConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_distribution_configuration+: converted,
      }
    ),
    withFastLaunchConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fast_launch_configuration+: converted,
      }
    ),
    withLaunchTemplateConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template_configuration+: converted,
      }
    ),
    withS3ExportConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_export_configuration+: converted,
      }
    ),
    withSsmParameterConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_parameter_configuration+: converted,
      }
    ),
  },
  withDistribution(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      distribution: value,
    }
  ),
  withDistributionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      distribution+: converted,
    }
  ),
}
