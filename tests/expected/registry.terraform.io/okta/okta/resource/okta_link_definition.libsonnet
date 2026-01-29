{
  local block = self,

  new(terraformName, associatedDescription, associatedName, associatedTitle, primaryDescription, primaryName, primaryTitle):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_link_definition",
          type:: "resource",
          attributes:: ["associated_description", "associated_name", "associated_title", "id", "primary_description", "primary_name", "primary_title"],
        },
      },
    }
    + block.withAssociatedDescription(associatedDescription)
    + block.withAssociatedName(associatedName)
    + block.withAssociatedTitle(associatedTitle)
    + block.withPrimaryDescription(primaryDescription)
    + block.withPrimaryName(primaryName)
    + block.withPrimaryTitle(primaryTitle)
  ),

  "#withAssociatedDescription":: "Description of the associated relationship.",
  withAssociatedDescription(value):: (
    assert std.isString(value) : '"associated_description" expected to be of type "string"';

    {
      associated_description: value,
    }
  ),

  "#withAssociatedName":: "API name of the associated link.",
  withAssociatedName(value):: (
    assert std.isString(value) : '"associated_name" expected to be of type "string"';

    {
      associated_name: value,
    }
  ),

  "#withAssociatedTitle":: "Display name of the associated link.",
  withAssociatedTitle(value):: (
    assert std.isString(value) : '"associated_title" expected to be of type "string"';

    {
      associated_title: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withPrimaryDescription":: "Description of the primary relationship.",
  withPrimaryDescription(value):: (
    assert std.isString(value) : '"primary_description" expected to be of type "string"';

    {
      primary_description: value,
    }
  ),

  "#withPrimaryName":: "API name of the primary link.",
  withPrimaryName(value):: (
    assert std.isString(value) : '"primary_name" expected to be of type "string"';

    {
      primary_name: value,
    }
  ),

  "#withPrimaryTitle":: "Display name of the primary link.",
  withPrimaryTitle(value):: (
    assert std.isString(value) : '"primary_title" expected to be of type "string"';

    {
      primary_title: value,
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
