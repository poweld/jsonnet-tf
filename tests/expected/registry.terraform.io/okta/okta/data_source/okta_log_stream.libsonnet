{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_log_stream",
          type:: "data",
          attributes:: ["id", "name", "status", "type"],
        },
      },
    }
  ),

  "#withId":: "ID of the log stream to retrieve, conflicts with `name`.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Unique name for the Log Stream object, conflicts with `id`.",
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

  settings:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withSettings(value):: (
    {
      settings: value,
    }
  ),
}
