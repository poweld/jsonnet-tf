{
  local block = self,
  new(terraformName, user):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_user_login_profile",
          type:: "resource",
          attributes:: ["encrypted_password", "id", "key_fingerprint", "password", "password_length", "password_reset_required", "pgp_key", "user"],
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
  withPasswordLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_length" expected to be of type "number"';
    {
      password_length: converted,
    }
  ),
  withPasswordResetRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_reset_required" expected to be of type "bool"';
    {
      password_reset_required: converted,
    }
  ),
  withPgpKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"pgp_key" expected to be of type "string"';
    {
      pgp_key: converted,
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
