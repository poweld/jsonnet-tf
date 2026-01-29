{
  local block = self,

  new(terraformName, appId, index, title, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_user_base_schema_property",
          type:: "resource",
          attributes:: ["app_id", "id", "index", "master", "pattern", "permissions", "required", "title", "type", "user_type"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withIndex(index)
    + block.withTitle(title)
    + block.withType(type)
  ),

  "#withAppId":: "The Application's ID the user schema property should be assigned to.",
  withAppId(value):: (
    assert std.isString(value) : '"app_id" expected to be of type "string"';

    {
      app_id: value,
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

  "#withMaster":: "Master priority for the user schema property. It can be set to `PROFILE_MASTER` or `OKTA`. Default: `PROFILE_MASTER`",
  withMaster(value):: (
    assert std.isString(value) : '"master" expected to be of type "string"';

    {
      master: value,
    }
  ),

  "#withPattern":: "The validation pattern to use for the subschema. Must be in form of '.+', or '[<pattern>]+' if present.'",
  withPattern(value):: (
    assert std.isString(value) : '"pattern" expected to be of type "string"';

    {
      pattern: value,
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

  "#withUserType":: "User type ID. By default, it is `default`",
  withUserType(value):: (
    assert std.isString(value) : '"user_type" expected to be of type "string"';

    {
      user_type: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
