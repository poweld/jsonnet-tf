{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_server_certificate",
          type:: "data",
          attributes:: ["arn", "certificate_body", "certificate_chain", "expiration_date", "id", "latest", "name", "name_prefix", "path", "path_prefix", "upload_date"],
        },
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
  withLatest(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"latest" expected to be of type "bool"';
    {
      latest: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPathPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"path_prefix" expected to be of type "string"';
    {
      path_prefix: converted,
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
