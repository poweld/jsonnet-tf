{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          object:: "okta_log_stream",
          type:: "data",
          attributes:: ["id", "name", "status", "type"],
        },
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withId":: "ID of the log stream to retrieve, conflicts with `name`.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Unique name for the Log Stream object, conflicts with `id`.",
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
  settings:: {
    local block = self,
    new():: (
      {}
    ),
  },
  withSettings(value):: (
    local converted = value;
    {
      settings: value,
    }
  ),
}
