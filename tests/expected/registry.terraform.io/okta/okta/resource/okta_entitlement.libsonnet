{
  local block = self,

  new(terraformName, dataType, externalValue, multiValue):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_entitlement",
          type:: "resource",
          attributes:: ["data_type", "description", "external_value", "id", "multi_value", "name", "parent_resource_orn", "value"],
        },
      },
    }
    + block.withDataType(dataType)
    + block.withExternalValue(externalValue)
    + block.withMultiValue(multiValue)
  ),

  "#withDataType":: "The data type of the entitlement property.",
  withDataType(value):: (
    assert std.isString(value) : '"data_type" expected to be of type "string"';

    {
      data_type: value,
    }
  ),

  "#withDescription":: "The description of the entitlement property.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withExternalValue":: "The value of an entitlement property.",
  withExternalValue(value):: (
    assert std.isString(value) : '"external_value" expected to be of type "string"';

    {
      external_value: value,
    }
  ),

  "#withMultiValue":: "The property that determines if the entitlement property can hold multiple values.",
  withMultiValue(value):: (
    assert std.isBoolean(value) : '"multi_value" expected to be of type "bool"';

    {
      multi_value: value,
    }
  ),

  "#withName":: "The name of the entitlement property.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withParentResourceOrn":: "The Okta app instance, in ORN format.",
  withParentResourceOrn(value):: (
    assert std.isString(value) : '"parent_resource_orn" expected to be of type "string"';

    {
      parent_resource_orn: value,
    }
  ),

  "#withValue":: "The value of the entitlement property.",
  withValue(value):: (
    assert std.isString(value) : '"value" expected to be of type "string"';

    {
      value: value,
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

    new(externalId, type):: (
      {}
      + block.withExternalId(externalId)
      + block.withType(type)
    ),

    "#withExternalId":: "The Okta app.id of the resource.",
    withExternalId(value):: (
      assert std.isString(value) : '"external_id" expected to be of type "string"';

      {
        external_id: value,
      }
    ),

    "#withType":: "The type of resource.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  values:: {
    local block = self,

    new():: (
      {}
    ),

    "#withDescription":: "The description of the entitlement value.",
    withDescription(value):: (
      assert std.isString(value) : '"description" expected to be of type "string"';

      {
        description: value,
      }
    ),

    "#withExternalValue":: "The value of an entitlement property value.",
    withExternalValue(value):: (
      assert std.isString(value) : '"external_value" expected to be of type "string"';

      {
        external_value: value,
      }
    ),

    "#withId":: "Collection of entitlement values.",
    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    "#withName":: "The display name for an entitlement value.",
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
