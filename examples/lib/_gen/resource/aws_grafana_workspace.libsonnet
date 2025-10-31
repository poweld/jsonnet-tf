{
  local block = self,
  new(terraformName, accountAccessType, authenticationProviders, permissionType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_grafana_workspace",
          type:: "resource",
          attributes:: ["account_access_type", "arn", "authentication_providers", "configuration", "data_sources", "description", "endpoint", "grafana_version", "id", "name", "notification_destinations", "organization_role_name", "organizational_units", "permission_type", "region", "role_arn", "saml_configuration_status", "stack_set_name", "tags", "tags_all"],
        },
      },
    }
    + block.withAccountAccessType(accountAccessType)
    + block.withAuthenticationProviders(authenticationProviders)
    + block.withPermissionType(permissionType)
  ),
  withAccountAccessType(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_access_type" expected to be of type "string"';
    {
      account_access_type: converted,
    }
  ),
  withAuthenticationProviders(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authentication_providers" expected to be of type "list"';
    {
      authentication_providers: converted,
    }
  ),
  withAuthenticationProvidersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authentication_providers" expected to be of type "list"';
    {
      authentication_providers+: converted,
    }
  ),
  withConfiguration(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration" expected to be of type "string"';
    {
      configuration: converted,
    }
  ),
  withDataSources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_sources" expected to be of type "list"';
    {
      data_sources: converted,
    }
  ),
  withDataSourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"data_sources" expected to be of type "list"';
    {
      data_sources+: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withGrafanaVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"grafana_version" expected to be of type "string"';
    {
      grafana_version: converted,
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
  withNotificationDestinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"notification_destinations" expected to be of type "list"';
    {
      notification_destinations: converted,
    }
  ),
  withNotificationDestinationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"notification_destinations" expected to be of type "list"';
    {
      notification_destinations+: converted,
    }
  ),
  withOrganizationRoleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization_role_name" expected to be of type "string"';
    {
      organization_role_name: converted,
    }
  ),
  withOrganizationalUnits(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"organizational_units" expected to be of type "list"';
    {
      organizational_units: converted,
    }
  ),
  withOrganizationalUnitsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"organizational_units" expected to be of type "list"';
    {
      organizational_units+: converted,
    }
  ),
  withPermissionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"permission_type" expected to be of type "string"';
    {
      permission_type: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withStackSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_set_name" expected to be of type "string"';
    {
      stack_set_name: converted,
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
  network_access_control:: {
    local block = self,
    new(prefixListIds, vpceIds):: (
      {}
      + block.withPrefixListIds(prefixListIds)
      + block.withVpceIds(vpceIds)
    ),
    withPrefixListIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"prefix_list_ids" expected to be of type "set"';
      {
        prefix_list_ids: converted,
      }
    ),
    withPrefixListIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"prefix_list_ids" expected to be of type "set"';
      {
        prefix_list_ids+: converted,
      }
    ),
    withVpceIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpce_ids" expected to be of type "set"';
      {
        vpce_ids: converted,
      }
    ),
    withVpceIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpce_ids" expected to be of type "set"';
      {
        vpce_ids+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  vpc_configuration:: {
    local block = self,
    new(securityGroupIds, subnetIds):: (
      {}
      + block.withSecurityGroupIds(securityGroupIds)
      + block.withSubnetIds(subnetIds)
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
  },
  withNetworkAccessControl(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_access_control: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpcConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration: value,
    }
  ),
  withNetworkAccessControlMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_access_control+: converted,
    }
  ),
  withVpcConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration+: converted,
    }
  ),
}
