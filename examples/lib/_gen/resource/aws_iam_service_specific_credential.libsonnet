{
  local block = self,
  new(terraformName, serviceName, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_service_specific_credential",
          type:: "resource",
          attributes:: ["id", "service_name", "service_password", "service_specific_credential_id", "service_user_name", "status", "user_name"],
        },
      },
    }
    + block.withServiceName(serviceName)
    + block.withUserName(userName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withServiceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
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
