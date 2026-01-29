{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_groups",
          type:: "data",
          attributes:: ["groups", "id", "limit", "q", "search", "type"],
        },
      },
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withLimit":: "The maximum number of groups returned by the Okta API, between 1 and 10000.",
  withLimit(value):: (
    assert std.isNumber(value) : '"limit" expected to be of type "number"';

    {
      limit: value,
    }
  ),

  "#withQ":: "Searches the name property of groups for matching value",
  withQ(value):: (
    assert std.isString(value) : '"q" expected to be of type "string"';

    {
      q: value,
    }
  ),

  "#withSearch":: "Searches for groups with a supported filtering expression for all attributes except for '_embedded', '_links', and 'objectClass'",
  withSearch(value):: (
    assert std.isString(value) : '"search" expected to be of type "string"';

    {
      search: value,
    }
  ),

  "#withType":: "Type of the group. When specified in the terraform resource, will act as a filter when searching for the groups",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
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
