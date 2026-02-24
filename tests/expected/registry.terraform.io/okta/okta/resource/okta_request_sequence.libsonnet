{
  local block = self,

  new(terraformName, id, resourceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_request_sequence",
          type:: "resource",
          attributes:: ["compatible_resource_types", "description", "id", "link", "name", "resource_id"],
        },
      },
    }
    + block.withId(id)
    + block.withResourceId(resourceId)
  ),

  "#withId":: "The unique identifier for the request sequence. This is typically the sequence ID in Okta.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withResourceId":: "The id of the resource in Okta ID format.",
  withResourceId(value):: (
    assert std.isString(value) : '"resource_id" expected to be of type "string"';

    {
      resource_id: value,
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
