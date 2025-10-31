{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspaces_directory",
          type:: "resource",
          attributes:: ["alias", "customer_user_name", "directory_id", "directory_name", "directory_type", "dns_ip_addresses", "iam_role_id", "id", "ip_group_ids", "region", "registration_code", "subnet_ids", "tags", "tags_all", "user_identity_type", "workspace_directory_description", "workspace_directory_name", "workspace_security_group_id", "workspace_type"],
        },
      },
    }
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_group_ids" expected to be of type "set"';
    {
      ip_group_ids: converted,
    }
  ),
  withIpGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_group_ids" expected to be of type "set"';
    {
      ip_group_ids+: converted,
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
  withUserIdentityType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_identity_type" expected to be of type "string"';
    {
      user_identity_type: converted,
    }
  ),
  withWorkspaceDirectoryDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_directory_description" expected to be of type "string"';
    {
      workspace_directory_description: converted,
    }
  ),
  withWorkspaceDirectoryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_directory_name" expected to be of type "string"';
    {
      workspace_directory_name: converted,
    }
  ),
  withWorkspaceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_type" expected to be of type "string"';
    {
      workspace_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  active_directory_config:: {
    local block = self,
    new(domainName, serviceAccountSecretArn):: (
      {}
      + block.withDomainName(domainName)
      + block.withServiceAccountSecretArn(serviceAccountSecretArn)
    ),
    withDomainName(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    withServiceAccountSecretArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_account_secret_arn" expected to be of type "string"';
      {
        service_account_secret_arn: converted,
      }
    ),
  },
  certificate_based_auth_properties:: {
    local block = self,
    new():: (
      {}
    ),
    withCertificateAuthorityArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
      {
        certificate_authority_arn: converted,
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
  saml_properties:: {
    local block = self,
    new():: (
      {}
    ),
    withRelayStateParameterName(value):: (
      local converted = value;
      assert std.isString(converted) : '"relay_state_parameter_name" expected to be of type "string"';
      {
        relay_state_parameter_name: converted,
      }
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    withUserAccessUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_access_url" expected to be of type "string"';
      {
        user_access_url: converted,
      }
    ),
  },
  self_service_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    withChangeComputeType(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"change_compute_type" expected to be of type "bool"';
      {
        change_compute_type: converted,
      }
    ),
    withIncreaseVolumeSize(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"increase_volume_size" expected to be of type "bool"';
      {
        increase_volume_size: converted,
      }
    ),
    withRebuildWorkspace(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"rebuild_workspace" expected to be of type "bool"';
      {
        rebuild_workspace: converted,
      }
    ),
    withRestartWorkspace(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"restart_workspace" expected to be of type "bool"';
      {
        restart_workspace: converted,
      }
    ),
    withSwitchRunningMode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"switch_running_mode" expected to be of type "bool"';
      {
        switch_running_mode: converted,
      }
    ),
  },
  workspace_access_properties:: {
    local block = self,
    new():: (
      {}
    ),
    withDeviceTypeAndroid(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_android" expected to be of type "string"';
      {
        device_type_android: converted,
      }
    ),
    withDeviceTypeChromeos(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_chromeos" expected to be of type "string"';
      {
        device_type_chromeos: converted,
      }
    ),
    withDeviceTypeIos(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_ios" expected to be of type "string"';
      {
        device_type_ios: converted,
      }
    ),
    withDeviceTypeLinux(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_linux" expected to be of type "string"';
      {
        device_type_linux: converted,
      }
    ),
    withDeviceTypeOsx(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_osx" expected to be of type "string"';
      {
        device_type_osx: converted,
      }
    ),
    withDeviceTypeWeb(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_web" expected to be of type "string"';
      {
        device_type_web: converted,
      }
    ),
    withDeviceTypeWindows(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_windows" expected to be of type "string"';
      {
        device_type_windows: converted,
      }
    ),
    withDeviceTypeZeroclient(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_type_zeroclient" expected to be of type "string"';
      {
        device_type_zeroclient: converted,
      }
    ),
  },
  workspace_creation_properties:: {
    local block = self,
    new():: (
      {}
    ),
    withCustomSecurityGroupId(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_security_group_id" expected to be of type "string"';
      {
        custom_security_group_id: converted,
      }
    ),
    withDefaultOu(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_ou" expected to be of type "string"';
      {
        default_ou: converted,
      }
    ),
    withEnableInternetAccess(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_internet_access" expected to be of type "bool"';
      {
        enable_internet_access: converted,
      }
    ),
    withEnableMaintenanceMode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_maintenance_mode" expected to be of type "bool"';
      {
        enable_maintenance_mode: converted,
      }
    ),
    withUserEnabledAsLocalAdministrator(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"user_enabled_as_local_administrator" expected to be of type "bool"';
      {
        user_enabled_as_local_administrator: converted,
      }
    ),
  },
  withActiveDirectoryConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      active_directory_config: value,
    }
  ),
  withCertificateBasedAuthProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_based_auth_properties: value,
    }
  ),
  withSamlProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_properties: value,
    }
  ),
  withSelfServicePermissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_service_permissions: value,
    }
  ),
  withWorkspaceAccessProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_access_properties: value,
    }
  ),
  withWorkspaceCreationProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_creation_properties: value,
    }
  ),
  withActiveDirectoryConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      active_directory_config+: converted,
    }
  ),
  withCertificateBasedAuthPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_based_auth_properties+: converted,
    }
  ),
  withSamlPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_properties+: converted,
    }
  ),
  withSelfServicePermissionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_service_permissions+: converted,
    }
  ),
  withWorkspaceAccessPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_access_properties+: converted,
    }
  ),
  withWorkspaceCreationPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_creation_properties+: converted,
    }
  ),
}
