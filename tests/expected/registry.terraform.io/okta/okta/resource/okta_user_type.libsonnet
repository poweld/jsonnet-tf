{
  local block = self,
  new(terraformName, description, displayName, name):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_user_type",
        type:: "resource",
        attributes:: ["description", "display_name", "id", "name"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withDescription(description)
    + block.withDisplayName(displayName)
    + block.withName(name)
  ),
  "#withDescription":: "Description of the User Type.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withDisplayName":: "Display Name of the User Type.",
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of the User Type.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
