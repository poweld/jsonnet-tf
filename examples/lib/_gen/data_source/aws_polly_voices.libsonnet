{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_polly_voices",
          type:: "data",
          attributes:: ["engine", "id", "include_additional_language_codes", "language_code", "region"],
        },
      },
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withIncludeAdditionalLanguageCodes(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_additional_language_codes" expected to be of type "bool"';
    {
      include_additional_language_codes: converted,
    }
  ),
  withLanguageCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  voices:: {
    local block = self,
    new():: (
      {}
    ),
  },
  withVoices(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voices: value,
    }
  ),
  withVoicesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voices+: converted,
    }
  ),
}
