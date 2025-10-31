{
  local block = self,
  new(terraformName, encoding, publicKey, username):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_user_ssh_key",
          type:: "resource",
          attributes:: ["encoding", "fingerprint", "id", "public_key", "ssh_public_key_id", "status", "username"],
        },
      },
    }
    + block.withEncoding(encoding)
    + block.withPublicKey(publicKey)
    + block.withUsername(username)
  ),
  withEncoding(value):: (
    local converted = value;
    assert std.isString(converted) : '"encoding" expected to be of type "string"';
    {
      encoding: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPublicKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_key" expected to be of type "string"';
    {
      public_key: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
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
