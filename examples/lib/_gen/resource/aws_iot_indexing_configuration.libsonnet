{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_indexing_configuration",
          type:: "resource",
          attributes:: ["id", "region"],
        },
      },
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  thing_group_indexing_configuration:: {
    local block = self,
    new(thingGroupIndexingMode):: (
      {}
      + block.withThingGroupIndexingMode(thingGroupIndexingMode)
    ),
    withThingGroupIndexingMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"thing_group_indexing_mode" expected to be of type "string"';
      {
        thing_group_indexing_mode: converted,
      }
    ),
    custom_field:: {
      local block = self,
      new():: (
        {}
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    managed_field:: {
      local block = self,
      new():: (
        {}
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withCustomField(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_field: value,
      }
    ),
    withManagedField(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_field: value,
      }
    ),
    withCustomFieldMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_field+: converted,
      }
    ),
    withManagedFieldMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_field+: converted,
      }
    ),
  },
  thing_indexing_configuration:: {
    local block = self,
    new(thingIndexingMode):: (
      {}
      + block.withThingIndexingMode(thingIndexingMode)
    ),
    withDeviceDefenderIndexingMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_defender_indexing_mode" expected to be of type "string"';
      {
        device_defender_indexing_mode: converted,
      }
    ),
    withNamedShadowIndexingMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"named_shadow_indexing_mode" expected to be of type "string"';
      {
        named_shadow_indexing_mode: converted,
      }
    ),
    withThingConnectivityIndexingMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"thing_connectivity_indexing_mode" expected to be of type "string"';
      {
        thing_connectivity_indexing_mode: converted,
      }
    ),
    withThingIndexingMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"thing_indexing_mode" expected to be of type "string"';
      {
        thing_indexing_mode: converted,
      }
    ),
    custom_field:: {
      local block = self,
      new():: (
        {}
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    filter:: {
      local block = self,
      new():: (
        {}
      ),
      withNamedShadowNames(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"named_shadow_names" expected to be of type "set"';
        {
          named_shadow_names: converted,
        }
      ),
      withNamedShadowNamesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"named_shadow_names" expected to be of type "set"';
        {
          named_shadow_names+: converted,
        }
      ),
    },
    managed_field:: {
      local block = self,
      new():: (
        {}
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withCustomField(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_field: value,
      }
    ),
    withFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    withManagedField(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_field: value,
      }
    ),
    withCustomFieldMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_field+: converted,
      }
    ),
    withFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
    withManagedFieldMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_field+: converted,
      }
    ),
  },
  withThingGroupIndexingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thing_group_indexing_configuration: value,
    }
  ),
  withThingIndexingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thing_indexing_configuration: value,
    }
  ),
  withThingGroupIndexingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thing_group_indexing_configuration+: converted,
    }
  ),
  withThingIndexingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thing_indexing_configuration+: converted,
    }
  ),
}
