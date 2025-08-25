{
  local block = self,
  new(terraformName, associatedDescription, associatedName, associatedTitle, primaryDescription, primaryName, primaryTitle):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_link_definition",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["associated_description", "associated_name", "associated_title", "id", "primary_description", "primary_name", "primary_title"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAssociatedDescription(associatedDescription)
    + block.withAssociatedName(associatedName)
    + block.withAssociatedTitle(associatedTitle)
    + block.withPrimaryDescription(primaryDescription)
    + block.withPrimaryName(primaryName)
    + block.withPrimaryTitle(primaryTitle)
  ),
  "#withAssociatedDescription":: "Description of the associated relationship.",
  withAssociatedDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_description" expected to be of type "string"';
    {
      associated_description: converted,
    }
  ),
  "#withAssociatedName":: "API name of the associated link.",
  withAssociatedName(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_name" expected to be of type "string"';
    {
      associated_name: converted,
    }
  ),
  "#withAssociatedTitle":: "Display name of the associated link.",
  withAssociatedTitle(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_title" expected to be of type "string"';
    {
      associated_title: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPrimaryDescription":: "Description of the primary relationship.",
  withPrimaryDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_description" expected to be of type "string"';
    {
      primary_description: converted,
    }
  ),
  "#withPrimaryName":: "API name of the primary link.",
  withPrimaryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_name" expected to be of type "string"';
    {
      primary_name: converted,
    }
  ),
  "#withPrimaryTitle":: "Display name of the primary link.",
  withPrimaryTitle(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_title" expected to be of type "string"';
    {
      primary_title: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
