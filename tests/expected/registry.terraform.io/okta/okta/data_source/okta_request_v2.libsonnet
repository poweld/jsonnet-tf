{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_request_v2",
          type:: "data",
          attributes:: ["created", "created_by", "id", "last_updated", "last_updated_by", "status"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The id of the request.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  requested:: {
    local block = self,

    new():: (
      {}
    ),
  },
  requestedBy:: {
    local block = self,

    new():: (
      {}
    ),
  },
  requestedFor:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withRequested(value):: (
    {
      requested: value,
    }
  ),
  withRequestedBy(value):: (
    {
      requested_by: value,
    }
  ),
  withRequestedFor(value):: (
    {
      requested_for: value,
    }
  ),
}
