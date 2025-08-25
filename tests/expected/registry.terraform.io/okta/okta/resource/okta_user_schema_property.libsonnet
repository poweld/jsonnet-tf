{
  local block = self,
  new(terraformName, index, title, type):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_user_schema_property",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["array_enum", "array_type", "description", "enum", "external_name", "external_namespace", "id", "index", "master", "max_length", "min_length", "pattern", "permissions", "required", "scope", "title", "type", "unique", "user_type"],
      },
    }
    + block.withTerraformName(terraformName)
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
    local converted = value;
    assert std.isString(converted) : '"array_type" expected to be of type "string"';
    {
      array_type: converted,
    }
  ),
  "#withDescription":: "The description of the user schema property.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
    local converted = value;
    assert std.isString(converted) : '"external_name" expected to be of type "string"';
    {
      external_name: converted,
    }
  ),
  "#withExternalNamespace":: "External namespace of the user schema property.",
  withExternalNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_namespace" expected to be of type "string"';
    {
      external_namespace: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIndex":: "Subschema unique string identifier",
  withIndex(value):: (
    local converted = value;
    assert std.isString(converted) : '"index" expected to be of type "string"';
    {
      index: converted,
    }
  ),
  "#withMaster":: " Master priority for the user schema property. It can be set to `PROFILE_MASTER`, `OVERRIDE` or `OKTA`.",
  withMaster(value):: (
    local converted = value;
    assert std.isString(converted) : '"master" expected to be of type "string"';
    {
      master: converted,
    }
  ),
  "#withMaxLength":: "The maximum length of the user property value. Only applies to type `string`",
  withMaxLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_length" expected to be of type "number"';
    {
      max_length: converted,
    }
  ),
  "#withMinLength":: "The minimum length of the user property value. Only applies to type `string`",
  withMinLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_length" expected to be of type "number"';
    {
      min_length: converted,
    }
  ),
  "#withPattern":: "The validation pattern to use for the subschema. Must be in form of '.+', or '[<pattern>]+' if present.'",
  withPattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"pattern" expected to be of type "string"';
    {
      pattern: converted,
    }
  ),
  "#withPermissions":: "Access control permissions for the property. It can be set to `READ_WRITE`, `READ_ONLY`, `HIDE`. Default: `READ_ONLY`",
  withPermissions(value):: (
    local converted = value;
    assert std.isString(converted) : '"permissions" expected to be of type "string"';
    {
      permissions: converted,
    }
  ),
  "#withRequired":: "Whether the subschema is required",
  withRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
    {
      required: converted,
    }
  ),
  "#withScope":: "determines whether an app user attribute can be set at the Individual or Group Level. Default: `NONE`",
  withScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
    }
  ),
  "#withTitle":: "Subschema title (display name)",
  withTitle(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
  "#withType":: "The type of the schema property. It can be `string`, `boolean`, `number`, `integer`, `array`, or `object`",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withUnique":: "Whether the property should be unique. It can be set to `UNIQUE_VALIDATED` or `NOT_UNIQUE`.",
  withUnique(value):: (
    local converted = value;
    assert std.isString(converted) : '"unique" expected to be of type "string"';
    {
      unique: converted,
    }
  ),
  "#withUserType":: "User type ID. By default, it is `default`",
  withUserType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type" expected to be of type "string"';
    {
      user_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
  array_one_of:: {
    local block = self,
    new(const, title):: (
      {}
      + block.withConst(const)
      + block.withTitle(title)
    ),
    "#withConst":: "Value mapping to member of `array_enum`",
    withConst(value):: (
      local converted = value;
      assert std.isString(converted) : '"const" expected to be of type "string"';
      {
        const: converted,
      }
    ),
    "#withTitle":: "Display name for the enum value.",
    withTitle(value):: (
      local converted = value;
      assert std.isString(converted) : '"title" expected to be of type "string"';
      {
        title: converted,
      }
    ),
  },
  master_override_priority:: {
    local block = self,
    new(value):: (
      {}
      + block.withValue(value)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  one_of:: {
    local block = self,
    new(const, title):: (
      {}
      + block.withConst(const)
      + block.withTitle(title)
    ),
    "#withConst":: "Enum value",
    withConst(value):: (
      local converted = value;
      assert std.isString(converted) : '"const" expected to be of type "string"';
      {
        const: converted,
      }
    ),
    "#withTitle":: "Enum title",
    withTitle(value):: (
      local converted = value;
      assert std.isString(converted) : '"title" expected to be of type "string"';
      {
        title: converted,
      }
    ),
  },
  withArrayOneOf(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      array_one_of: value,
    }
  ),
  withMasterOverridePriority(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      master_override_priority: value,
    }
  ),
  withOneOf(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      one_of: value,
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
