{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lakeformation_data_lake_settings",
          type:: "resource",
          attributes:: ["admins", "allow_external_data_filtering", "allow_full_table_external_data_access", "authorized_session_tag_value_list", "catalog_id", "external_data_filtering_allow_list", "id", "parameters", "read_only_admins", "region", "trusted_resource_owners"],
        },
      },
    }
  ),
  withAdmins(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admins" expected to be of type "set"';
    {
      admins: converted,
    }
  ),
  withAdminsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admins" expected to be of type "set"';
    {
      admins+: converted,
    }
  ),
  withAllowExternalDataFiltering(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_external_data_filtering" expected to be of type "bool"';
    {
      allow_external_data_filtering: converted,
    }
  ),
  withAllowFullTableExternalDataAccess(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_full_table_external_data_access" expected to be of type "bool"';
    {
      allow_full_table_external_data_access: converted,
    }
  ),
  withAuthorizedSessionTagValueList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_session_tag_value_list" expected to be of type "list"';
    {
      authorized_session_tag_value_list: converted,
    }
  ),
  withAuthorizedSessionTagValueListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_session_tag_value_list" expected to be of type "list"';
    {
      authorized_session_tag_value_list+: converted,
    }
  ),
  withCatalogId(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  withExternalDataFilteringAllowList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"external_data_filtering_allow_list" expected to be of type "set"';
    {
      external_data_filtering_allow_list: converted,
    }
  ),
  withExternalDataFilteringAllowListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"external_data_filtering_allow_list" expected to be of type "set"';
    {
      external_data_filtering_allow_list+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  withReadOnlyAdmins(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"read_only_admins" expected to be of type "set"';
    {
      read_only_admins: converted,
    }
  ),
  withReadOnlyAdminsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"read_only_admins" expected to be of type "set"';
    {
      read_only_admins+: converted,
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
  withTrustedResourceOwners(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_resource_owners" expected to be of type "list"';
    {
      trusted_resource_owners: converted,
    }
  ),
  withTrustedResourceOwnersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_resource_owners" expected to be of type "list"';
    {
      trusted_resource_owners+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  create_database_default_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    withPermissions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions: converted,
      }
    ),
    withPermissionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions+: converted,
      }
    ),
    withPrincipal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
  },
  create_table_default_permissions:: {
    local block = self,
    new():: (
      {}
    ),
    withPermissions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions: converted,
      }
    ),
    withPermissionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions+: converted,
      }
    ),
    withPrincipal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
  },
  withCreateDatabaseDefaultPermissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_database_default_permissions: value,
    }
  ),
  withCreateTableDefaultPermissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_table_default_permissions: value,
    }
  ),
  withCreateDatabaseDefaultPermissionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_database_default_permissions+: converted,
    }
  ),
  withCreateTableDefaultPermissionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_table_default_permissions+: converted,
    }
  ),
}
