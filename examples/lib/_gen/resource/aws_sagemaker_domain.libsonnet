{
  local block = self,
  new(terraformName, authMode, domainName, subnetIds, vpcId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_domain",
          type:: "resource",
          attributes:: ["app_network_access_type", "app_security_group_management", "arn", "auth_mode", "domain_name", "home_efs_file_system_id", "id", "kms_key_id", "region", "security_group_id_for_domain_boundary", "single_sign_on_application_arn", "single_sign_on_managed_application_instance_id", "subnet_ids", "tag_propagation", "tags", "tags_all", "url", "vpc_id"],
        },
      },
    }
    + block.withAuthMode(authMode)
    + block.withDomainName(domainName)
    + block.withSubnetIds(subnetIds)
    + block.withVpcId(vpcId)
  ),
  withAppNetworkAccessType(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_network_access_type" expected to be of type "string"';
    {
      app_network_access_type: converted,
    }
  ),
  withAppSecurityGroupManagement(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_security_group_management" expected to be of type "string"';
    {
      app_security_group_management: converted,
    }
  ),
  withAuthMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_mode" expected to be of type "string"';
    {
      auth_mode: converted,
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
    }
  ),
  withTagPropagation(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_propagation" expected to be of type "string"';
    {
      tag_propagation: converted,
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
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  default_space_settings:: {
    local block = self,
    new(executionRole):: (
      {}
      + block.withExecutionRole(executionRole)
    ),
    withExecutionRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role" expected to be of type "string"';
      {
        execution_role: converted,
      }
    ),
    withSecurityGroups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
      {
        security_groups: converted,
      }
    ),
    withSecurityGroupsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
      {
        security_groups+: converted,
      }
    ),
    custom_file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      efs_file_system_config:: {
        local block = self,
        new(fileSystemId, fileSystemPath):: (
          {}
          + block.withFileSystemId(fileSystemId)
          + block.withFileSystemPath(fileSystemPath)
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
      },
      withEfsFileSystemConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system_config: value,
        }
      ),
      withEfsFileSystemConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system_config+: converted,
        }
      ),
    },
    custom_posix_user_config:: {
      local block = self,
      new(gid, uid):: (
        {}
        + block.withGid(gid)
        + block.withUid(uid)
      ),
      withGid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gid" expected to be of type "number"';
        {
          gid: converted,
        }
      ),
      withUid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"uid" expected to be of type "number"';
        {
          uid: converted,
        }
      ),
    },
    jupyter_lab_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withBuiltInLifecycleConfigArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"built_in_lifecycle_config_arn" expected to be of type "string"';
        {
          built_in_lifecycle_config_arn: converted,
        }
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
          withLifecycleManagement(value):: (
            local converted = value;
            assert std.isString(converted) : '"lifecycle_management" expected to be of type "string"';
            {
              lifecycle_management: converted,
            }
          ),
          withMaxIdleTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_idle_timeout_in_minutes" expected to be of type "number"';
            {
              max_idle_timeout_in_minutes: converted,
            }
          ),
          withMinIdleTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_idle_timeout_in_minutes" expected to be of type "number"';
            {
              min_idle_timeout_in_minutes: converted,
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
      emr_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withAssumableRoleArns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assumable_role_arns" expected to be of type "set"';
          {
            assumable_role_arns: converted,
          }
        ),
        withAssumableRoleArnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assumable_role_arns" expected to be of type "set"';
          {
            assumable_role_arns+: converted,
          }
        ),
        withExecutionRoleArns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"execution_role_arns" expected to be of type "set"';
          {
            execution_role_arns: converted,
          }
        ),
        withExecutionRoleArnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"execution_role_arns" expected to be of type "set"';
          {
            execution_role_arns+: converted,
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
      withEmrSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_settings: value,
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
      withEmrSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_settings+: converted,
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
      default_ebs_storage_settings:: {
        local block = self,
        new(defaultEbsVolumeSizeInGb, maximumEbsVolumeSizeInGb):: (
          {}
          + block.withDefaultEbsVolumeSizeInGb(defaultEbsVolumeSizeInGb)
          + block.withMaximumEbsVolumeSizeInGb(maximumEbsVolumeSizeInGb)
        ),
        withDefaultEbsVolumeSizeInGb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"default_ebs_volume_size_in_gb" expected to be of type "number"';
          {
            default_ebs_volume_size_in_gb: converted,
          }
        ),
        withMaximumEbsVolumeSizeInGb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"maximum_ebs_volume_size_in_gb" expected to be of type "number"';
          {
            maximum_ebs_volume_size_in_gb: converted,
          }
        ),
      },
      withDefaultEbsStorageSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_ebs_storage_settings: value,
        }
      ),
      withDefaultEbsStorageSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_ebs_storage_settings+: converted,
        }
      ),
    },
    withCustomFileSystemConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system_config: value,
      }
    ),
    withCustomPosixUserConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_posix_user_config: value,
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
    withCustomFileSystemConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system_config+: converted,
      }
    ),
    withCustomPosixUserConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_posix_user_config+: converted,
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
  default_user_settings:: {
    local block = self,
    new(executionRole):: (
      {}
      + block.withExecutionRole(executionRole)
    ),
    withAutoMountHomeEfs(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_mount_home_efs" expected to be of type "string"';
      {
        auto_mount_home_efs: converted,
      }
    ),
    withDefaultLandingUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_landing_uri" expected to be of type "string"';
      {
        default_landing_uri: converted,
      }
    ),
    withExecutionRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role" expected to be of type "string"';
      {
        execution_role: converted,
      }
    ),
    withSecurityGroups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
      {
        security_groups: converted,
      }
    ),
    withSecurityGroupsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
      {
        security_groups+: converted,
      }
    ),
    withStudioWebPortal(value):: (
      local converted = value;
      assert std.isString(converted) : '"studio_web_portal" expected to be of type "string"';
      {
        studio_web_portal: converted,
      }
    ),
    canvas_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      direct_deploy_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      emr_serverless_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withExecutionRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
          {
            execution_role_arn: converted,
          }
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      generative_ai_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withAmazonBedrockRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"amazon_bedrock_role_arn" expected to be of type "string"';
          {
            amazon_bedrock_role_arn: converted,
          }
        ),
      },
      identity_provider_oauth_settings:: {
        local block = self,
        new(secretArn):: (
          {}
          + block.withSecretArn(secretArn)
        ),
        withDataSourceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_source_name" expected to be of type "string"';
          {
            data_source_name: converted,
          }
        ),
        withSecretArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
          {
            secret_arn: converted,
          }
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      kendra_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      model_register_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withCrossAccountModelRegisterRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"cross_account_model_register_role_arn" expected to be of type "string"';
          {
            cross_account_model_register_role_arn: converted,
          }
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      time_series_forecasting_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withAmazonForecastRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"amazon_forecast_role_arn" expected to be of type "string"';
          {
            amazon_forecast_role_arn: converted,
          }
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      workspace_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withS3ArtifactPath(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_artifact_path" expected to be of type "string"';
          {
            s3_artifact_path: converted,
          }
        ),
        withS3KmsKeyId(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_kms_key_id" expected to be of type "string"';
          {
            s3_kms_key_id: converted,
          }
        ),
      },
      withDirectDeploySettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          direct_deploy_settings: value,
        }
      ),
      withEmrServerlessSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_serverless_settings: value,
        }
      ),
      withGenerativeAiSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          generative_ai_settings: value,
        }
      ),
      withIdentityProviderOauthSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          identity_provider_oauth_settings: value,
        }
      ),
      withKendraSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          kendra_settings: value,
        }
      ),
      withModelRegisterSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          model_register_settings: value,
        }
      ),
      withTimeSeriesForecastingSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          time_series_forecasting_settings: value,
        }
      ),
      withWorkspaceSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          workspace_settings: value,
        }
      ),
      withDirectDeploySettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          direct_deploy_settings+: converted,
        }
      ),
      withEmrServerlessSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_serverless_settings+: converted,
        }
      ),
      withGenerativeAiSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          generative_ai_settings+: converted,
        }
      ),
      withIdentityProviderOauthSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          identity_provider_oauth_settings+: converted,
        }
      ),
      withKendraSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          kendra_settings+: converted,
        }
      ),
      withModelRegisterSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          model_register_settings+: converted,
        }
      ),
      withTimeSeriesForecastingSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          time_series_forecasting_settings+: converted,
        }
      ),
      withWorkspaceSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          workspace_settings+: converted,
        }
      ),
    },
    code_editor_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withBuiltInLifecycleConfigArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"built_in_lifecycle_config_arn" expected to be of type "string"';
        {
          built_in_lifecycle_config_arn: converted,
        }
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
          withLifecycleManagement(value):: (
            local converted = value;
            assert std.isString(converted) : '"lifecycle_management" expected to be of type "string"';
            {
              lifecycle_management: converted,
            }
          ),
          withMaxIdleTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_idle_timeout_in_minutes" expected to be of type "number"';
            {
              max_idle_timeout_in_minutes: converted,
            }
          ),
          withMinIdleTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_idle_timeout_in_minutes" expected to be of type "number"';
            {
              min_idle_timeout_in_minutes: converted,
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
      withAppLifecycleManagement(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management: value,
        }
      ),
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
      withAppLifecycleManagementMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          app_lifecycle_management+: converted,
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
    custom_file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      efs_file_system_config:: {
        local block = self,
        new(fileSystemId, fileSystemPath):: (
          {}
          + block.withFileSystemId(fileSystemId)
          + block.withFileSystemPath(fileSystemPath)
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
      },
      withEfsFileSystemConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system_config: value,
        }
      ),
      withEfsFileSystemConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          efs_file_system_config+: converted,
        }
      ),
    },
    custom_posix_user_config:: {
      local block = self,
      new(gid, uid):: (
        {}
        + block.withGid(gid)
        + block.withUid(uid)
      ),
      withGid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gid" expected to be of type "number"';
        {
          gid: converted,
        }
      ),
      withUid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"uid" expected to be of type "number"';
        {
          uid: converted,
        }
      ),
    },
    jupyter_lab_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withBuiltInLifecycleConfigArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"built_in_lifecycle_config_arn" expected to be of type "string"';
        {
          built_in_lifecycle_config_arn: converted,
        }
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
          withLifecycleManagement(value):: (
            local converted = value;
            assert std.isString(converted) : '"lifecycle_management" expected to be of type "string"';
            {
              lifecycle_management: converted,
            }
          ),
          withMaxIdleTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_idle_timeout_in_minutes" expected to be of type "number"';
            {
              max_idle_timeout_in_minutes: converted,
            }
          ),
          withMinIdleTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_idle_timeout_in_minutes" expected to be of type "number"';
            {
              min_idle_timeout_in_minutes: converted,
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
      emr_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withAssumableRoleArns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assumable_role_arns" expected to be of type "set"';
          {
            assumable_role_arns: converted,
          }
        ),
        withAssumableRoleArnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assumable_role_arns" expected to be of type "set"';
          {
            assumable_role_arns+: converted,
          }
        ),
        withExecutionRoleArns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"execution_role_arns" expected to be of type "set"';
          {
            execution_role_arns: converted,
          }
        ),
        withExecutionRoleArnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"execution_role_arns" expected to be of type "set"';
          {
            execution_role_arns+: converted,
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
      withEmrSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_settings: value,
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
      withEmrSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          emr_settings+: converted,
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
    r_session_app_settings:: {
      local block = self,
      new():: (
        {}
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
    r_studio_server_pro_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withAccessStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"access_status" expected to be of type "string"';
        {
          access_status: converted,
        }
      ),
      withUserGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_group" expected to be of type "string"';
        {
          user_group: converted,
        }
      ),
    },
    sharing_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withNotebookOutputOption(value):: (
        local converted = value;
        assert std.isString(converted) : '"notebook_output_option" expected to be of type "string"';
        {
          notebook_output_option: converted,
        }
      ),
      withS3KmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_kms_key_id" expected to be of type "string"';
        {
          s3_kms_key_id: converted,
        }
      ),
      withS3OutputPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_output_path" expected to be of type "string"';
        {
          s3_output_path: converted,
        }
      ),
    },
    space_storage_settings:: {
      local block = self,
      new():: (
        {}
      ),
      default_ebs_storage_settings:: {
        local block = self,
        new(defaultEbsVolumeSizeInGb, maximumEbsVolumeSizeInGb):: (
          {}
          + block.withDefaultEbsVolumeSizeInGb(defaultEbsVolumeSizeInGb)
          + block.withMaximumEbsVolumeSizeInGb(maximumEbsVolumeSizeInGb)
        ),
        withDefaultEbsVolumeSizeInGb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"default_ebs_volume_size_in_gb" expected to be of type "number"';
          {
            default_ebs_volume_size_in_gb: converted,
          }
        ),
        withMaximumEbsVolumeSizeInGb(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"maximum_ebs_volume_size_in_gb" expected to be of type "number"';
          {
            maximum_ebs_volume_size_in_gb: converted,
          }
        ),
      },
      withDefaultEbsStorageSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_ebs_storage_settings: value,
        }
      ),
      withDefaultEbsStorageSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_ebs_storage_settings+: converted,
        }
      ),
    },
    studio_web_portal_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withHiddenAppTypes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_app_types" expected to be of type "set"';
        {
          hidden_app_types: converted,
        }
      ),
      withHiddenAppTypesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_app_types" expected to be of type "set"';
        {
          hidden_app_types+: converted,
        }
      ),
      withHiddenInstanceTypes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_instance_types" expected to be of type "set"';
        {
          hidden_instance_types: converted,
        }
      ),
      withHiddenInstanceTypesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_instance_types" expected to be of type "set"';
        {
          hidden_instance_types+: converted,
        }
      ),
      withHiddenMlTools(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_ml_tools" expected to be of type "set"';
        {
          hidden_ml_tools: converted,
        }
      ),
      withHiddenMlToolsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hidden_ml_tools" expected to be of type "set"';
        {
          hidden_ml_tools+: converted,
        }
      ),
    },
    tensor_board_app_settings:: {
      local block = self,
      new():: (
        {}
      ),
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
      withDefaultResourceSpec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      withDefaultResourceSpecMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    withCanvasAppSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        canvas_app_settings: value,
      }
    ),
    withCodeEditorAppSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_editor_app_settings: value,
      }
    ),
    withCustomFileSystemConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system_config: value,
      }
    ),
    withCustomPosixUserConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_posix_user_config: value,
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
    withRSessionAppSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_session_app_settings: value,
      }
    ),
    withRStudioServerProAppSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_studio_server_pro_app_settings: value,
      }
    ),
    withSharingSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sharing_settings: value,
      }
    ),
    withSpaceStorageSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        space_storage_settings: value,
      }
    ),
    withStudioWebPortalSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        studio_web_portal_settings: value,
      }
    ),
    withTensorBoardAppSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tensor_board_app_settings: value,
      }
    ),
    withCanvasAppSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        canvas_app_settings+: converted,
      }
    ),
    withCodeEditorAppSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_editor_app_settings+: converted,
      }
    ),
    withCustomFileSystemConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_file_system_config+: converted,
      }
    ),
    withCustomPosixUserConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_posix_user_config+: converted,
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
    withRSessionAppSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_session_app_settings+: converted,
      }
    ),
    withRStudioServerProAppSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_studio_server_pro_app_settings+: converted,
      }
    ),
    withSharingSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sharing_settings+: converted,
      }
    ),
    withSpaceStorageSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        space_storage_settings+: converted,
      }
    ),
    withStudioWebPortalSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        studio_web_portal_settings+: converted,
      }
    ),
    withTensorBoardAppSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tensor_board_app_settings+: converted,
      }
    ),
  },
  domain_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withExecutionRoleIdentityConfig(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role_identity_config" expected to be of type "string"';
      {
        execution_role_identity_config: converted,
      }
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    docker_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withEnableDockerAccess(value):: (
        local converted = value;
        assert std.isString(converted) : '"enable_docker_access" expected to be of type "string"';
        {
          enable_docker_access: converted,
        }
      ),
      withVpcOnlyTrustedAccounts(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_only_trusted_accounts" expected to be of type "set"';
        {
          vpc_only_trusted_accounts: converted,
        }
      ),
      withVpcOnlyTrustedAccountsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_only_trusted_accounts" expected to be of type "set"';
        {
          vpc_only_trusted_accounts+: converted,
        }
      ),
    },
    r_studio_server_pro_domain_settings:: {
      local block = self,
      new(domainExecutionRoleArn):: (
        {}
        + block.withDomainExecutionRoleArn(domainExecutionRoleArn)
      ),
      withDomainExecutionRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain_execution_role_arn" expected to be of type "string"';
        {
          domain_execution_role_arn: converted,
        }
      ),
      withRStudioConnectUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"r_studio_connect_url" expected to be of type "string"';
        {
          r_studio_connect_url: converted,
        }
      ),
      withRStudioPackageManagerUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"r_studio_package_manager_url" expected to be of type "string"';
        {
          r_studio_package_manager_url: converted,
        }
      ),
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
      withDefaultResourceSpec(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec: value,
        }
      ),
      withDefaultResourceSpecMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_resource_spec+: converted,
        }
      ),
    },
    withDockerSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_settings: value,
      }
    ),
    withRStudioServerProDomainSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_studio_server_pro_domain_settings: value,
      }
    ),
    withDockerSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_settings+: converted,
      }
    ),
    withRStudioServerProDomainSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        r_studio_server_pro_domain_settings+: converted,
      }
    ),
  },
  retention_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withHomeEfsFileSystem(value):: (
      local converted = value;
      assert std.isString(converted) : '"home_efs_file_system" expected to be of type "string"';
      {
        home_efs_file_system: converted,
      }
    ),
  },
  withDefaultSpaceSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_space_settings: value,
    }
  ),
  withDefaultUserSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_user_settings: value,
    }
  ),
  withDomainSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_settings: value,
    }
  ),
  withRetentionPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_policy: value,
    }
  ),
  withDefaultSpaceSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_space_settings+: converted,
    }
  ),
  withDefaultUserSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_user_settings+: converted,
    }
  ),
  withDomainSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_settings+: converted,
    }
  ),
  withRetentionPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_policy+: converted,
    }
  ),
}
