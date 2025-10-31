{
  local block = self,
  new(terraformName, domainId, spaceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_space",
          type:: "resource",
          attributes:: ["arn", "domain_id", "home_efs_file_system_uid", "id", "region", "space_display_name", "space_name", "tags", "tags_all", "url"],
        },
      },
    }
    + block.withDomainId(domainId)
    + block.withSpaceName(spaceName)
  ),
  withDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withSpaceDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"space_display_name" expected to be of type "string"';
    {
      space_display_name: converted,
    }
  ),
  withSpaceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"space_name" expected to be of type "string"';
    {
      space_name: converted,
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
  ownership_settings:: {
    local block = self,
    new(ownerUserProfileName):: (
      {}
      + block.withOwnerUserProfileName(ownerUserProfileName)
    ),
    withOwnerUserProfileName(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner_user_profile_name" expected to be of type "string"';
      {
        owner_user_profile_name: converted,
      }
    ),
  },
  space_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withAppType(value):: (
      local converted = value;
      assert std.isString(converted) : '"app_type" expected to be of type "string"';
      {
        app_type: converted,
      }
    ),
    code_editor_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      app_lifecycle_management:: {
        local block = self,
        new():: (
          {}
        ),
        idle_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withIdleTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"idle_timeout_in_minutes" expected to be of type "number"';
            {
              idle_timeout_in_minutes: converted,
            }
          ),
        },
        withIdleSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle_settings: value,
          }
        ),
        withIdleSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle_settings+: converted,
          }
        ),
      },
      default_resource_spec:: {
        local block = self,
        new():: (
          {}
        ),
        withInstanceType(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        withLifecycleConfigArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
          {
            lifecycle_config_arn: converted,
          }
        ),
        withSagemakerImageArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
          {
            sagemaker_image_arn: converted,
          }
        ),
        withSagemakerImageVersionAlias(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
          {
            sagemaker_image_version_alias: converted,
          }
        ),
        withSagemakerImageVersionArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
          {
            sagemaker_image_version_arn: converted,
          }
        ),
      },
      withAppLifecycleManagement(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management: value,
        }
      ),
      withDefaultResourceSpec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      withAppLifecycleManagementMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management+: converted,
        }
      ),
      withDefaultResourceSpecMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    custom_file_system:: {
      local block = self,
      new():: (
        {}
      ),
      efs_file_system:: {
        local block = self,
        new(fileSystemId):: (
          {}
          + block.withFileSystemId(fileSystemId)
        ),
        withFileSystemId(value):: (
          local converted = value;
          assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
          {
            file_system_id: converted,
          }
        ),
      },
      withEfsFileSystem(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system: value,
        }
      ),
      withEfsFileSystemMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system+: converted,
        }
      ),
    },
    jupyter_lab_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      app_lifecycle_management:: {
        local block = self,
        new():: (
          {}
        ),
        idle_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withIdleTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"idle_timeout_in_minutes" expected to be of type "number"';
            {
              idle_timeout_in_minutes: converted,
            }
          ),
        },
        withIdleSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle_settings: value,
          }
        ),
        withIdleSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle_settings+: converted,
          }
        ),
      },
      code_repository:: {
        local block = self,
        new(repositoryUrl):: (
          {}
          + block.withRepositoryUrl(repositoryUrl)
        ),
        withRepositoryUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"repository_url" expected to be of type "string"';
          {
            repository_url: converted,
          }
        ),
      },
      default_resource_spec:: {
        local block = self,
        new():: (
          {}
        ),
        withInstanceType(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        withLifecycleConfigArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
          {
            lifecycle_config_arn: converted,
          }
        ),
        withSagemakerImageArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
          {
            sagemaker_image_arn: converted,
          }
        ),
        withSagemakerImageVersionAlias(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
          {
            sagemaker_image_version_alias: converted,
          }
        ),
        withSagemakerImageVersionArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
          {
            sagemaker_image_version_arn: converted,
          }
        ),
      },
      withAppLifecycleManagement(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management: value,
        }
      ),
      withCodeRepository(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_repository: value,
        }
      ),
      withDefaultResourceSpec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      withAppLifecycleManagementMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management+: converted,
        }
      ),
      withCodeRepositoryMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_repository+: converted,
        }
      ),
      withDefaultResourceSpecMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    jupyter_server_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withLifecycleConfigArns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"lifecycle_config_arns" expected to be of type "set"';
        {
          lifecycle_config_arns: converted,
        }
      ),
      withLifecycleConfigArnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"lifecycle_config_arns" expected to be of type "set"';
        {
          lifecycle_config_arns+: converted,
        }
      ),
      code_repository:: {
        local block = self,
        new(repositoryUrl):: (
          {}
          + block.withRepositoryUrl(repositoryUrl)
        ),
        withRepositoryUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"repository_url" expected to be of type "string"';
          {
            repository_url: converted,
          }
        ),
      },
      default_resource_spec:: {
        local block = self,
        new():: (
          {}
        ),
        withInstanceType(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        withLifecycleConfigArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
          {
            lifecycle_config_arn: converted,
          }
        ),
        withSagemakerImageArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
          {
            sagemaker_image_arn: converted,
          }
        ),
        withSagemakerImageVersionAlias(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
          {
            sagemaker_image_version_alias: converted,
          }
        ),
        withSagemakerImageVersionArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
          {
            sagemaker_image_version_arn: converted,
          }
        ),
      },
      withCodeRepository(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_repository: value,
        }
      ),
      withDefaultResourceSpec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      withCodeRepositoryMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_repository+: converted,
        }
      ),
      withDefaultResourceSpecMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    kernel_gateway_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withLifecycleConfigArns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"lifecycle_config_arns" expected to be of type "set"';
        {
          lifecycle_config_arns: converted,
        }
      ),
      withLifecycleConfigArnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"lifecycle_config_arns" expected to be of type "set"';
        {
          lifecycle_config_arns+: converted,
        }
      ),
      custom_image:: {
        local block = self,
        new(appImageConfigName, imageName):: (
          {}
          + block.withAppImageConfigName(appImageConfigName)
          + block.withImageName(imageName)
        ),
        withAppImageConfigName(value):: (
          local converted = value;
          assert std.isString(converted) : '"app_image_config_name" expected to be of type "string"';
          {
            app_image_config_name: converted,
          }
        ),
        withImageName(value):: (
          local converted = value;
          assert std.isString(converted) : '"image_name" expected to be of type "string"';
          {
            image_name: converted,
          }
        ),
        withImageVersionNumber(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"image_version_number" expected to be of type "number"';
          {
            image_version_number: converted,
          }
        ),
      },
      default_resource_spec:: {
        local block = self,
        new():: (
          {}
        ),
        withInstanceType(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        withLifecycleConfigArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
          {
            lifecycle_config_arn: converted,
          }
        ),
        withSagemakerImageArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
          {
            sagemaker_image_arn: converted,
          }
        ),
        withSagemakerImageVersionAlias(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
          {
            sagemaker_image_version_alias: converted,
          }
        ),
        withSagemakerImageVersionArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
          {
            sagemaker_image_version_arn: converted,
          }
        ),
      },
      withCustomImage(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_image: value,
        }
      ),
      withDefaultResourceSpec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      withCustomImageMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_image+: converted,
        }
      ),
      withDefaultResourceSpecMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    space_storage_settings:: {
      local block = self,
      new():: (
        {}
      ),
      ebs_storage_settings:: {
        local block = self,
        new(ebsVolumeSizeInGb):: (
          {}
          + block.withEbsVolumeSizeInGb(ebsVolumeSizeInGb)
        ),
        withEbsVolumeSizeInGb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"ebs_volume_size_in_gb" expected to be of type "number"';
          {
            ebs_volume_size_in_gb: converted,
          }
        ),
      },
      withEbsStorageSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_storage_settings: value,
        }
      ),
      withEbsStorageSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_storage_settings+: converted,
        }
      ),
    },
    withCodeEditorAppSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_editor_app_settings: value,
      }
    ),
    withCustomFileSystem(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system: value,
      }
    ),
    withJupyterLabAppSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jupyter_lab_app_settings: value,
      }
    ),
    withJupyterServerAppSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jupyter_server_app_settings: value,
      }
    ),
    withKernelGatewayAppSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kernel_gateway_app_settings: value,
      }
    ),
    withSpaceStorageSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        space_storage_settings: value,
      }
    ),
    withCodeEditorAppSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_editor_app_settings+: converted,
      }
    ),
    withCustomFileSystemMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system+: converted,
      }
    ),
    withJupyterLabAppSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jupyter_lab_app_settings+: converted,
      }
    ),
    withJupyterServerAppSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jupyter_server_app_settings+: converted,
      }
    ),
    withKernelGatewayAppSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kernel_gateway_app_settings+: converted,
      }
    ),
    withSpaceStorageSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        space_storage_settings+: converted,
      }
    ),
  },
  space_sharing_settings:: {
    local block = self,
    new(sharingType):: (
      {}
      + block.withSharingType(sharingType)
    ),
    withSharingType(value):: (
      local converted = value;
      assert std.isString(converted) : '"sharing_type" expected to be of type "string"';
      {
        sharing_type: converted,
      }
    ),
  },
  withOwnershipSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ownership_settings: value,
    }
  ),
  withSpaceSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      space_settings: value,
    }
  ),
  withSpaceSharingSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      space_sharing_settings: value,
    }
  ),
  withOwnershipSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ownership_settings+: converted,
    }
  ),
  withSpaceSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      space_settings+: converted,
    }
  ),
  withSpaceSharingSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      space_sharing_settings+: converted,
    }
  ),
}
