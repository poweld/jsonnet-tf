{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_groups",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["groups", "id", "limit", "q", "search", "type"],
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLimit":: "The maximum number of groups returned by the Okta API, between 1 and 10000.",
  withLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"limit" expected to be of type "number"';
    {
      limit: converted,
    }
  ),
  "#withQ":: "Searches the name property of groups for matching value",
  withQ(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
  "#withSearch":: "Searches for groups with a supported filtering expression for all attributes except for '_embedded', '_links', and 'objectClass'",
  withSearch(value):: (
    local converted = value;
    assert std.isString(converted) : '"search" expected to be of type "string"';
    {
      search: converted,
    }
  ),
  "#withType":: "Type of the group. When specified in the terraform resource, will act as a filter when searching for the groups",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
