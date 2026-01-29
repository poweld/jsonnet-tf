{
  local block = self,

  new(terraformName, description, displayName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_user_type",
          type:: "resource",
          attributes:: ["description", "display_name", "id", "name"],
        },
      },
    }
    + block.withDescription(description)
    + block.withDisplayName(displayName)
    + block.withName(name)
  ),

  "#withDescription":: "Description of the User Type.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withDisplayName":: "Display Name of the User Type.",
  withDisplayName(value):: (
    assert std.isString(value) : '"display_name" expected to be of type "string"';

    {
      display_name: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Name of the User Type.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
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
