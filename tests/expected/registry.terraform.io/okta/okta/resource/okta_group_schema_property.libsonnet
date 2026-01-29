{
  local block = self,

  new(terraformName, index, title, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_group_schema_property",
          type:: "resource",
          attributes:: ["array_enum", "array_type", "description", "enum", "external_name", "external_namespace", "id", "index", "master", "max_length", "min_length", "permissions", "required", "scope", "title", "type", "unique"],
        },
      },
    }
    + block.withIndex(index)
    + block.withTitle(title)
    + block.withType(type)
  ),

  "#withArrayEnum":: "Array of values that an array property's items can be set to.",
  withArrayEnum(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"array_enum" expected to be of type "list"';

    {
      array_enum: converted,
    }
  ),

  "#withArrayEnumMixin":: "Array of values that an array property's items can be set to.",
  withArrayEnumMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"array_enum" expected to be of type "list"';

    {
      array_enum+: converted,
    }
  ),

  "#withArrayType":: "The type of the array elements if `type` is set to `array`",
  withArrayType(value):: (
    assert std.isString(value) : '"array_type" expected to be of type "string"';

    {
      array_type: value,
    }
  ),

  "#withDescription":: "The description of the user schema property.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withEnum":: "Array of values a primitive property can be set to. See `array_enum` for arrays.",
  withEnum(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enum" expected to be of type "list"';

    {
      enum: converted,
    }
  ),

  "#withEnumMixin":: "Array of values a primitive property can be set to. See `array_enum` for arrays.",
  withEnumMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enum" expected to be of type "list"';

    {
      enum+: converted,
    }
  ),

  "#withExternalName":: "External name of the user schema property.",
  withExternalName(value):: (
    assert std.isString(value) : '"external_name" expected to be of type "string"';

    {
      external_name: value,
    }
  ),

  "#withExternalNamespace":: "External namespace of the user schema property.",
  withExternalNamespace(value):: (
    assert std.isString(value) : '"external_namespace" expected to be of type "string"';

    {
      external_namespace: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withIndex":: "Subschema unique string identifier",
  withIndex(value):: (
    assert std.isString(value) : '"index" expected to be of type "string"';

    {
      index: value,
    }
  ),

  "#withMaster":: "Master priority for the group schema property. It can be set to `PROFILE_MASTER`, `OVERRIDE` or `OKTA`. Default: `PROFILE_MASTER`",
  withMaster(value):: (
    assert std.isString(value) : '"master" expected to be of type "string"';

    {
      master: value,
    }
  ),

  "#withMaxLength":: "The maximum length of the user property value. Only applies to type `string`",
  withMaxLength(value):: (
    assert std.isNumber(value) : '"max_length" expected to be of type "number"';

    {
      max_length: value,
    }
  ),

  "#withMinLength":: "The minimum length of the user property value. Only applies to type `string`",
  withMinLength(value):: (
    assert std.isNumber(value) : '"min_length" expected to be of type "number"';

    {
      min_length: value,
    }
  ),

  "#withPermissions":: "Access control permissions for the property. It can be set to `READ_WRITE`, `READ_ONLY`, `HIDE`. Default: `READ_ONLY`",
  withPermissions(value):: (
    assert std.isString(value) : '"permissions" expected to be of type "string"';

    {
      permissions: value,
    }
  ),

  "#withRequired":: "Whether the subschema is required",
  withRequired(value):: (
    assert std.isBoolean(value) : '"required" expected to be of type "bool"';

    {
      required: value,
    }
  ),

  withScope(value):: (
    assert std.isString(value) : '"scope" expected to be of type "string"';

    {
      scope: value,
    }
  ),

  "#withTitle":: "Subschema title (display name)",
  withTitle(value):: (
    assert std.isString(value) : '"title" expected to be of type "string"';

    {
      title: value,
    }
  ),

  "#withType":: "The type of the schema property. It can be `string`, `boolean`, `number`, `integer`, `array`, or `object`",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
    }
  ),

  "#withUnique":: "Whether the property should be unique. It can be set to `UNIQUE_VALIDATED` or `NOT_UNIQUE`.",
  withUnique(value):: (
    assert std.isString(value) : '"unique" expected to be of type "string"';

    {
      unique: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  arrayOneOf:: {
    local block = self,

    new(const, title):: (
      {}
      + block.withConst(const)
      + block.withTitle(title)
    ),

    "#withConst":: "Value mapping to member of `array_enum`",
    withConst(value):: (
      assert std.isString(value) : '"const" expected to be of type "string"';

      {
        const: value,
      }
    ),

    "#withTitle":: "Display name for the enum value.",
    withTitle(value):: (
      assert std.isString(value) : '"title" expected to be of type "string"';

      {
        title: value,
      }
    ),
  },
  masterOverridePriority:: {
    local block = self,

    new(value):: (
      {}
      + block.withValue(value)
    ),

    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    withValue(value):: (
      assert std.isString(value) : '"value" expected to be of type "string"';

      {
        value: value,
      }
    ),
  },
  oneOf:: {
    local block = self,

    new(const, title):: (
      {}
      + block.withConst(const)
      + block.withTitle(title)
    ),

    "#withConst":: "Enum value",
    withConst(value):: (
      assert std.isString(value) : '"const" expected to be of type "string"';

      {
        const: value,
      }
    ),

    "#withTitle":: "Enum title",
    withTitle(value):: (
      assert std.isString(value) : '"title" expected to be of type "string"';

      {
        title: value,
      }
    ),
  },
  withArrayOneOf(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      array_one_of: converted,
    }
  ),
  withMasterOverridePriority(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_override_priority: converted,
    }
  ),
  withOneOf(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      one_of: converted,
    }
  ),
  withArrayOneOfMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      array_one_of+: converted,
    }
  ),
  withMasterOverridePriorityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_override_priority+: converted,
    }
  ),
  withOneOfMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      one_of+: converted,
    }
  ),
}
