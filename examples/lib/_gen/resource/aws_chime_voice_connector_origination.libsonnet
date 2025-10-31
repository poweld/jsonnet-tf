{
  local block = self,
  new(terraformName, voiceConnectorId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chime_voice_connector_origination",
          type:: "resource",
          attributes:: ["disabled", "id", "region", "voice_connector_id"],
        },
      },
    }
    + block.withVoiceConnectorId(voiceConnectorId)
  ),
  withDisabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
    {
      disabled: converted,
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
  route:: {
    local block = self,
    new(host, priority, protocol, weight):: (
      {}
      + block.withHost(host)
      + block.withPriority(priority)
      + block.withProtocol(protocol)
      + block.withWeight(weight)
    ),
    withHost(value):: (
      local converted = value;
      assert std.isString(converted) : '"host" expected to be of type "string"';
      {
        host: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    withPriority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    withWeight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  withRoute(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      route: value,
    }
  ),
  withRouteMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      route+: converted,
    }
  ),
}
