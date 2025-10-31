{
  local block = self,
  new(terraformName, globalEndpointTokenVersion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_security_token_service_preferences",
          type:: "resource",
          attributes:: ["global_endpoint_token_version", "id"],
        },
      },
    }
    + block.withGlobalEndpointTokenVersion(globalEndpointTokenVersion)
  ),
  withGlobalEndpointTokenVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_endpoint_token_version" expected to be of type "string"';
    {
      global_endpoint_token_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
