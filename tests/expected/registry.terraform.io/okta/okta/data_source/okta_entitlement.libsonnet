{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_entitlement",
          type:: "data",
          attributes:: ["data_type", "external_value", "id", "multi_value", "name", "parent_resource_orn"],
        },
      },
    }
    + block.withId(id)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  parent:: {
    local block = self,

    new():: (
      {}
    ),
  },
  values:: {
    local block = self,

    new():: (
      {}
    ),

    "#withDescription":: "The description of an entitlement value.",
    withDescription(value):: (
      assert std.isString(value) : '"description" expected to be of type "string"';

      {
        description: value,
      }
    ),

    "#withExternalId":: "The id of the entitlement value.",
    withExternalId(value):: (
      assert std.isString(value) : '"external_id" expected to be of type "string"';

      {
        external_id: value,
      }
    ),

    "#withExternalValue":: "The value of an entitlement property value.",
    withExternalValue(value):: (
      assert std.isString(value) : '"external_value" expected to be of type "string"';

      {
        external_value: value,
      }
    ),

    "#withName":: "The name of the entitlement value.",
    withName(value):: (
      assert std.isString(value) : '"name" expected to be of type "string"';

      {
        name: value,
      }
    ),
  },
  withParent(value):: (
    {
      parent: value,
    }
  ),
  withValues(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      values: converted,
    }
  ),
  withValuesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      values+: converted,
    }
  ),
}
