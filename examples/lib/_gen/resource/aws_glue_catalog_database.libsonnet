{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_catalog_database",
          type:: "resource",
          attributes:: ["arn", "catalog_id", "description", "id", "location_uri", "name", "parameters", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withCatalogId(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
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
  withLocationUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_uri" expected to be of type "string"';
    {
      location_uri: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
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
  create_table_default_permission:: {
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
    principal:: {
      local block = self,
      new():: (
        {}
      ),
      withDataLakePrincipalIdentifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_lake_principal_identifier" expected to be of type "string"';
        {
          data_lake_principal_identifier: converted,
        }
      ),
    },
    withPrincipal(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        principal: value,
      }
    ),
    withPrincipalMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        principal+: converted,
      }
    ),
  },
  federated_database:: {
    local block = self,
    new():: (
      {}
    ),
    withConnectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    withIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"identifier" expected to be of type "string"';
      {
        identifier: converted,
      }
    ),
  },
  target_database:: {
    local block = self,
    new(catalogId, databaseName):: (
      {}
      + block.withCatalogId(catalogId)
      + block.withDatabaseName(databaseName)
    ),
    withCatalogId(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    withDatabaseName(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
  },
  withCreateTableDefaultPermission(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_table_default_permission: value,
    }
  ),
  withFederatedDatabase(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      federated_database: value,
    }
  ),
  withTargetDatabase(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_database: value,
    }
  ),
  withCreateTableDefaultPermissionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      create_table_default_permission+: converted,
    }
  ),
  withFederatedDatabaseMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      federated_database+: converted,
    }
  ),
  withTargetDatabaseMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_database+: converted,
    }
  ),
}
