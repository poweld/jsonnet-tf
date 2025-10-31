{
  local block = self,
  new(terraformName, appImageConfigName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_app_image_config",
          type:: "resource",
          attributes:: ["app_image_config_name", "arn", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAppImageConfigName(appImageConfigName)
  ),
  withAppImageConfigName(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_image_config_name" expected to be of type "string"';
    {
      app_image_config_name: converted,
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
  code_editor_app_image_config:: {
    local block = self,
    new():: (
      {}
    ),
    container_config:: {
      local block = self,
      new():: (
        {}
      ),
      withContainerArguments(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_arguments" expected to be of type "list"';
        {
          container_arguments: converted,
        }
      ),
      withContainerArgumentsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_arguments" expected to be of type "list"';
        {
          container_arguments+: converted,
        }
      ),
      withContainerEntrypoint(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_entrypoint" expected to be of type "list"';
        {
          container_entrypoint: converted,
        }
      ),
      withContainerEntrypointMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_entrypoint" expected to be of type "list"';
        {
          container_entrypoint+: converted,
        }
      ),
      withContainerEnvironmentVariables(value):: (
        local converted = value;
        assert std.isObject(converted) : '"container_environment_variables" expected to be of type "map"';
        {
          container_environment_variables: converted,
        }
      ),
    },
    file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      withDefaultGid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_gid" expected to be of type "number"';
        {
          default_gid: converted,
        }
      ),
      withDefaultUid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_uid" expected to be of type "number"';
        {
          default_uid: converted,
        }
      ),
      withMountPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_path" expected to be of type "string"';
        {
          mount_path: converted,
        }
      ),
    },
    withContainerConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_config: value,
      }
    ),
    withFileSystemConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config: value,
      }
    ),
    withContainerConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_config+: converted,
      }
    ),
    withFileSystemConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config+: converted,
      }
    ),
  },
  jupyter_lab_image_config:: {
    local block = self,
    new():: (
      {}
    ),
    container_config:: {
      local block = self,
      new():: (
        {}
      ),
      withContainerArguments(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_arguments" expected to be of type "list"';
        {
          container_arguments: converted,
        }
      ),
      withContainerArgumentsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_arguments" expected to be of type "list"';
        {
          container_arguments+: converted,
        }
      ),
      withContainerEntrypoint(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_entrypoint" expected to be of type "list"';
        {
          container_entrypoint: converted,
        }
      ),
      withContainerEntrypointMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"container_entrypoint" expected to be of type "list"';
        {
          container_entrypoint+: converted,
        }
      ),
      withContainerEnvironmentVariables(value):: (
        local converted = value;
        assert std.isObject(converted) : '"container_environment_variables" expected to be of type "map"';
        {
          container_environment_variables: converted,
        }
      ),
    },
    file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      withDefaultGid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_gid" expected to be of type "number"';
        {
          default_gid: converted,
        }
      ),
      withDefaultUid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_uid" expected to be of type "number"';
        {
          default_uid: converted,
        }
      ),
      withMountPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_path" expected to be of type "string"';
        {
          mount_path: converted,
        }
      ),
    },
    withContainerConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_config: value,
      }
    ),
    withFileSystemConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config: value,
      }
    ),
    withContainerConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_config+: converted,
      }
    ),
    withFileSystemConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config+: converted,
      }
    ),
  },
  kernel_gateway_image_config:: {
    local block = self,
    new():: (
      {}
    ),
    file_system_config:: {
      local block = self,
      new():: (
        {}
      ),
      withDefaultGid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_gid" expected to be of type "number"';
        {
          default_gid: converted,
        }
      ),
      withDefaultUid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"default_uid" expected to be of type "number"';
        {
          default_uid: converted,
        }
      ),
      withMountPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_path" expected to be of type "string"';
        {
          mount_path: converted,
        }
      ),
    },
    kernel_spec:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withDisplayName(value):: (
        local converted = value;
        assert std.isString(converted) : '"display_name" expected to be of type "string"';
        {
          display_name: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    withFileSystemConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config: value,
      }
    ),
    withKernelSpec(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kernel_spec: value,
      }
    ),
    withFileSystemConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_config+: converted,
      }
    ),
    withKernelSpecMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kernel_spec+: converted,
      }
    ),
  },
  withCodeEditorAppImageConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      code_editor_app_image_config: value,
    }
  ),
  withJupyterLabImageConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jupyter_lab_image_config: value,
    }
  ),
  withKernelGatewayImageConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kernel_gateway_image_config: value,
    }
  ),
  withCodeEditorAppImageConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      code_editor_app_image_config+: converted,
    }
  ),
  withJupyterLabImageConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jupyter_lab_image_config+: converted,
    }
  ),
  withKernelGatewayImageConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kernel_gateway_image_config+: converted,
    }
  ),
}
