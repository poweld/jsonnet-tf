{
  local block = self,
  new(terraformName, className, databaseName, name, ownerName, ownerType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_user_defined_function",
          type:: "resource",
          attributes:: ["arn", "catalog_id", "class_name", "create_time", "database_name", "id", "name", "owner_name", "owner_type", "region"],
        },
      },
    }
    + block.withClassName(className)
    + block.withDatabaseName(databaseName)
    + block.withName(name)
    + block.withOwnerName(ownerName)
    + block.withOwnerType(ownerType)
  ),
  withCatalogId(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  withClassName(value):: (
    local converted = value;
    assert std.isString(converted) : '"class_name" expected to be of type "string"';
    {
      class_name: converted,
    }
  ),
  withDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
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
  withOwnerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_name" expected to be of type "string"';
    {
      owner_name: converted,
    }
  ),
  withOwnerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_type" expected to be of type "string"';
    {
      owner_type: converted,
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
  resource_uris:: {
    local block = self,
    new(resourceType, uri):: (
      {}
      + block.withResourceType(resourceType)
      + block.withUri(uri)
    ),
    withResourceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
    withUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  withResourceUris(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_uris: value,
    }
  ),
  withResourceUrisMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_uris+: converted,
    }
  ),
}
