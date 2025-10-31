{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_ipam",
          type:: "resource",
          attributes:: ["arn", "cascade", "default_resource_discovery_association_id", "default_resource_discovery_id", "description", "enable_private_gua", "id", "metered_account", "private_default_scope_id", "public_default_scope_id", "region", "scope_count", "tags", "tags_all", "tier"],
        },
      },
    }
  ),
  withCascade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cascade" expected to be of type "bool"';
    {
      cascade: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnablePrivateGua(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_private_gua" expected to be of type "bool"';
    {
      enable_private_gua: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMeteredAccount(value):: (
    local converted = value;
    assert std.isString(converted) : '"metered_account" expected to be of type "string"';
    {
      metered_account: converted,
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
  withTier(value):: (
    local converted = value;
    assert std.isString(converted) : '"tier" expected to be of type "string"';
    {
      tier: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  operating_regions:: {
    local block = self,
    new(regionName):: (
      {}
      + block.withRegionName(regionName)
    ),
    withRegionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"region_name" expected to be of type "string"';
      {
        region_name: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  withOperatingRegions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operating_regions: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withOperatingRegionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operating_regions+: converted,
    }
  ),
}
