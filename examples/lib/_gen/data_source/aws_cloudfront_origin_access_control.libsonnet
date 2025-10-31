{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_origin_access_control",
          type:: "data",
          attributes:: ["arn", "description", "etag", "id", "name", "origin_access_control_origin_type", "signing_behavior", "signing_protocol"],
        },
      },
    }
    + block.withId(id)
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
