{
  local block = self,
  new(terraformName, arn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_session_context",
          type:: "data",
          attributes:: ["arn", "id", "issuer_arn", "issuer_id", "issuer_name", "session_name"],
        },
      },
    }
    + block.withArn(arn)
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
