{
  local block = self,
  new(terraformName, voiceConnectorId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chime_voice_connector_termination_credentials",
          type:: "resource",
          attributes:: ["id", "region", "voice_connector_id"],
        },
      },
    }
    + block.withVoiceConnectorId(voiceConnectorId)
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
  withVoiceConnectorId(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_connector_id" expected to be of type "string"';
    {
      voice_connector_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  credentials:: {
    local block = self,
    new(password, username):: (
      {}
      + block.withPassword(password)
      + block.withUsername(username)
    ),
    withPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
      }
    ),
    withUsername(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
      }
    ),
  },
  withCredentials(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credentials: value,
    }
  ),
  withCredentialsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credentials+: converted,
    }
  ),
}
