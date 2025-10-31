{
  local block = self,
  new(terraformName, authType, serverType, token):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codebuild_source_credential",
          type:: "resource",
          attributes:: ["arn", "auth_type", "id", "region", "server_type", "token", "user_name"],
        },
      },
    }
    + block.withAuthType(authType)
    + block.withServerType(serverType)
    + block.withToken(token)
  ),
  withAuthType(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_type" expected to be of type "string"';
    {
      auth_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withServerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_type" expected to be of type "string"';
    {
      server_type: converted,
    }
  ),
  withToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"token" expected to be of type "string"';
    {
      token: converted,
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
