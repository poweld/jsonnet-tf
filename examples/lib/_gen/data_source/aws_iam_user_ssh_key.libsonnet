{
  local block = self,
  new(terraformName, encoding, sshPublicKeyId, username):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_user_ssh_key",
          type:: "data",
          attributes:: ["encoding", "fingerprint", "id", "public_key", "ssh_public_key_id", "status", "username"],
        },
      },
    }
    + block.withEncoding(encoding)
    + block.withSshPublicKeyId(sshPublicKeyId)
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
  withSshPublicKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssh_public_key_id" expected to be of type "string"';
    {
      ssh_public_key_id: converted,
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
