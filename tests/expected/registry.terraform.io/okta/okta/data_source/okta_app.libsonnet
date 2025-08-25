{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["active_only", "groups", "id", "label", "label_prefix", "links", "name", "skip_groups", "skip_users", "status", "users"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withActiveOnly":: "Search only ACTIVE applications.",
  withActiveOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active_only" expected to be of type "bool"';
    {
      active_only: converted,
    }
  ),
  "#withId":: "Id of application to retrieve, conflicts with label and label_prefix.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLabel":: "The label of the app to retrieve, conflicts with \t\t\t\tlabel_prefix and id. Label uses the ?q=<label> query parameter exposed by \t\t\t\tOkta's List Apps API. The API will search both name and label using that \t\t\t\tquery. Therefore similarly named and labeled apps may be returned in the query \t\t\t\tand have the unintended result of associating the wrong app with this data \t\t\t\tsource. See: \t\t\t\thttps://developer.okta.com/docs/reference/api/apps/#list-applications",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withLabelPrefix":: "Label prefix of the app to retrieve, conflicts with label and id. This will tell the \t\t\t\tprovider to do a starts with query as opposed to an equals query.",
  withLabelPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_prefix" expected to be of type "string"';
    {
      label_prefix: converted,
    }
  ),
  "#withSkipGroups":: "Ignore groups sync. This is a temporary solution until 'groups' field is supported in all the app-like resources",
  withSkipGroups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_groups" expected to be of type "bool"';
    {
      skip_groups: converted,
    }
  ),
  "#withSkipUsers":: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  withSkipUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_users" expected to be of type "bool"';
    {
      skip_users: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
