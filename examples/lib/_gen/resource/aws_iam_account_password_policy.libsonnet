{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_account_password_policy",
          type:: "resource",
          attributes:: ["allow_users_to_change_password", "expire_passwords", "hard_expiry", "id", "max_password_age", "minimum_password_length", "password_reuse_prevention", "require_lowercase_characters", "require_numbers", "require_symbols", "require_uppercase_characters"],
        },
      },
    }
  ),
  withAllowUsersToChangePassword(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_users_to_change_password" expected to be of type "bool"';
    {
      allow_users_to_change_password: converted,
    }
  ),
  withHardExpiry(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hard_expiry" expected to be of type "bool"';
    {
      hard_expiry: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxPasswordAge(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_password_age" expected to be of type "number"';
    {
      max_password_age: converted,
    }
  ),
  withMinimumPasswordLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"minimum_password_length" expected to be of type "number"';
    {
      minimum_password_length: converted,
    }
  ),
  withPasswordReusePrevention(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_reuse_prevention" expected to be of type "number"';
    {
      password_reuse_prevention: converted,
    }
  ),
  withRequireLowercaseCharacters(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_lowercase_characters" expected to be of type "bool"';
    {
      require_lowercase_characters: converted,
    }
  ),
  withRequireNumbers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_numbers" expected to be of type "bool"';
    {
      require_numbers: converted,
    }
  ),
  withRequireSymbols(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_symbols" expected to be of type "bool"';
    {
      require_symbols: converted,
    }
  ),
  withRequireUppercaseCharacters(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_uppercase_characters" expected to be of type "bool"';
    {
      require_uppercase_characters: converted,
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
