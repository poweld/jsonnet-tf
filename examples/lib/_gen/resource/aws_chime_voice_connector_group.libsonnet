{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chime_voice_connector_group",
          type:: "resource",
          attributes:: ["id", "name", "region"],
        },
      },
    }
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  connector:: {
    local block = self,
    new(priority, voiceConnectorId):: (
      {}
      + block.withPriority(priority)
      + block.withVoiceConnectorId(voiceConnectorId)
    ),
    withPriority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    withVoiceConnectorId(value):: (
      local converted = value;
      assert std.isString(converted) : '"voice_connector_id" expected to be of type "string"';
      {
        voice_connector_id: converted,
      }
    ),
  },
  withConnector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connector: value,
    }
  ),
  withConnectorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connector+: converted,
    }
  ),
}
