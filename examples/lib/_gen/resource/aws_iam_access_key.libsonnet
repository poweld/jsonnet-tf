{
  local block = self,
  new(terraformName, user):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_access_key",
          type:: "resource",
          attributes:: ["create_date", "encrypted_secret", "encrypted_ses_smtp_password_v4", "id", "key_fingerprint", "pgp_key", "secret", "ses_smtp_password_v4", "status", "user"],
        },
      },
    }
    + block.withUser(user)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPgpKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"pgp_key" expected to be of type "string"';
    {
      pgp_key: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withUser(value):: (
    local converted = value;
    assert std.isString(converted) : '"user" expected to be of type "string"';
    {
      user: converted,
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
