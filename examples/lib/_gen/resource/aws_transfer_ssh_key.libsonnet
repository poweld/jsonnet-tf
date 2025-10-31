{
  local block = self,
  new(terraformName, body, serverId, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transfer_ssh_key",
          type:: "resource",
          attributes:: ["body", "id", "region", "server_id", "ssh_key_id", "user_name"],
        },
      },
    }
    + block.withBody(body)
    + block.withServerId(serverId)
    + block.withUserName(userName)
  ),
  withBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
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
  withServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_id" expected to be of type "string"';
    {
      server_id: converted,
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
