{
  local block = self,
  new(terraformName, index, title, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          object:: "okta_user_base_schema_property",
          type:: "resource",
          attributes:: ["id", "index", "master", "pattern", "permissions", "required", "title", "type", "user_type"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withIndex(index)
    + block.withTitle(title)
    + block.withType(type)
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
  "#withMaster":: "Master priority for the user schema property. It can be set to `PROFILE_MASTER` or `OKTA`. Default: `PROFILE_MASTER`",
  withMaster(value):: (
    local converted = value;
    assert std.isString(converted) : '"master" expected to be of type "string"';
    {
      master: converted,
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
}
