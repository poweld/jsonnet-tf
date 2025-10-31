{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_secretsmanager_random_password",
          type:: "data",
          attributes:: ["exclude_characters", "exclude_lowercase", "exclude_numbers", "exclude_punctuation", "exclude_uppercase", "id", "include_space", "password_length", "random_password", "region", "require_each_included_type"],
        },
      },
    }
  ),
  withExcludeCharacters(value):: (
    local converted = value;
    assert std.isString(converted) : '"exclude_characters" expected to be of type "string"';
    {
      exclude_characters: converted,
    }
  ),
  withExcludeLowercase(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_lowercase" expected to be of type "bool"';
    {
      exclude_lowercase: converted,
    }
  ),
  withExcludeNumbers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_numbers" expected to be of type "bool"';
    {
      exclude_numbers: converted,
    }
  ),
  withExcludePunctuation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_punctuation" expected to be of type "bool"';
    {
      exclude_punctuation: converted,
    }
  ),
  withExcludeUppercase(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_uppercase" expected to be of type "bool"';
    {
      exclude_uppercase: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIncludeSpace(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_space" expected to be of type "bool"';
    {
      include_space: converted,
    }
  ),
  withPasswordLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_length" expected to be of type "number"';
    {
      password_length: converted,
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
  withRequireEachIncludedType(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_each_included_type" expected to be of type "bool"';
    {
      require_each_included_type: converted,
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
