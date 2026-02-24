{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_request_setting_organization",
          type:: "resource",
          attributes:: ["id", "subprocessors_acknowledged"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The internal identifier for this resource, required by Terraform to track state. This field does not exist in the Okta API response.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withSubprocessorsAcknowledged":: "Whether a customer has acknowledged Access Requests subprocessors.",
  withSubprocessorsAcknowledged(value):: (
    assert std.isBoolean(value) : '"subprocessors_acknowledged" expected to be of type "bool"';

    {
      subprocessors_acknowledged: value,
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
