{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chimesdkvoice_global_settings",
          type:: "resource",
          attributes:: ["id"],
        },
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  voice_connector:: {
    local block = self,
    new():: (
      {}
    ),
    withCdrBucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"cdr_bucket" expected to be of type "string"';
      {
        cdr_bucket: converted,
      }
    ),
  },
  withVoiceConnector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voice_connector: value,
    }
  ),
  withVoiceConnectorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voice_connector+: converted,
    }
  ),
}
