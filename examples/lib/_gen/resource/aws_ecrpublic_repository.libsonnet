{
  local block = self,
  new(terraformName, repositoryName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecrpublic_repository",
          type:: "resource",
          attributes:: ["arn", "force_destroy", "id", "region", "registry_id", "repository_name", "repository_uri", "tags", "tags_all"],
        },
      },
    }
    + block.withRepositoryName(repositoryName)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withRepositoryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_name" expected to be of type "string"';
    {
      repository_name: converted,
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
  catalog_data:: {
    local block = self,
    new():: (
      {}
    ),
    withAboutText(value):: (
      local converted = value;
      assert std.isString(converted) : '"about_text" expected to be of type "string"';
      {
        about_text: converted,
      }
    ),
    withArchitectures(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"architectures" expected to be of type "set"';
      {
        architectures: converted,
      }
    ),
    withArchitecturesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"architectures" expected to be of type "set"';
      {
        architectures+: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withLogoImageBlob(value):: (
      local converted = value;
      assert std.isString(converted) : '"logo_image_blob" expected to be of type "string"';
      {
        logo_image_blob: converted,
      }
    ),
    withOperatingSystems(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"operating_systems" expected to be of type "set"';
      {
        operating_systems: converted,
      }
    ),
    withOperatingSystemsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"operating_systems" expected to be of type "set"';
      {
        operating_systems+: converted,
      }
    ),
    withUsageText(value):: (
      local converted = value;
      assert std.isString(converted) : '"usage_text" expected to be of type "string"';
      {
        usage_text: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withCatalogData(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      catalog_data: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCatalogDataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      catalog_data+: converted,
    }
  ),
}
