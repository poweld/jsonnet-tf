{
  local block = self,
  new(terraformName, callingRegions, cidrAllowList, voiceConnectorId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chime_voice_connector_termination",
          type:: "resource",
          attributes:: ["calling_regions", "cidr_allow_list", "cps_limit", "default_phone_number", "disabled", "id", "region", "voice_connector_id"],
        },
      },
    }
    + block.withCallingRegions(callingRegions)
    + block.withCidrAllowList(cidrAllowList)
    + block.withVoiceConnectorId(voiceConnectorId)
  ),
  withCallingRegions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"calling_regions" expected to be of type "set"';
    {
      calling_regions: converted,
    }
  ),
  withCallingRegionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"calling_regions" expected to be of type "set"';
    {
      calling_regions+: converted,
    }
  ),
  withCidrAllowList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_allow_list" expected to be of type "set"';
    {
      cidr_allow_list: converted,
    }
  ),
  withCidrAllowListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_allow_list" expected to be of type "set"';
    {
      cidr_allow_list+: converted,
    }
  ),
  withCpsLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cps_limit" expected to be of type "number"';
    {
      cps_limit: converted,
    }
  ),
  withDefaultPhoneNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_phone_number" expected to be of type "string"';
    {
      default_phone_number: converted,
    }
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
}
