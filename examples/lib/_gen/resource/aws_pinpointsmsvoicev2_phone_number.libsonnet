{
  local block = self,
  new(terraformName, isoCountryCode, messageType, numberCapabilities, numberType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pinpointsmsvoicev2_phone_number",
          type:: "resource",
          attributes:: ["arn", "deletion_protection_enabled", "id", "iso_country_code", "message_type", "monthly_leasing_price", "number_capabilities", "number_type", "opt_out_list_name", "phone_number", "region", "registration_id", "self_managed_opt_outs_enabled", "tags", "tags_all", "two_way_channel_arn", "two_way_channel_enabled", "two_way_channel_role"],
        },
      },
    }
    + block.withIsoCountryCode(isoCountryCode)
    + block.withMessageType(messageType)
    + block.withNumberCapabilities(numberCapabilities)
    + block.withNumberType(numberType)
  ),
  withDeletionProtectionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection_enabled" expected to be of type "bool"';
    {
      deletion_protection_enabled: converted,
    }
  ),
  withIsoCountryCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"iso_country_code" expected to be of type "string"';
    {
      iso_country_code: converted,
    }
  ),
  withMessageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"message_type" expected to be of type "string"';
    {
      message_type: converted,
    }
  ),
  withNumberCapabilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"number_capabilities" expected to be of type "set"';
    {
      number_capabilities: converted,
    }
  ),
  withNumberCapabilitiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"number_capabilities" expected to be of type "set"';
    {
      number_capabilities+: converted,
    }
  ),
  withNumberType(value):: (
    local converted = value;
    assert std.isString(converted) : '"number_type" expected to be of type "string"';
    {
      number_type: converted,
    }
  ),
  withOptOutListName(value):: (
    local converted = value;
    assert std.isString(converted) : '"opt_out_list_name" expected to be of type "string"';
    {
      opt_out_list_name: converted,
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
  withRegistrationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"registration_id" expected to be of type "string"';
    {
      registration_id: converted,
    }
  ),
  withSelfManagedOptOutsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"self_managed_opt_outs_enabled" expected to be of type "bool"';
    {
      self_managed_opt_outs_enabled: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTwoWayChannelArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"two_way_channel_arn" expected to be of type "string"';
    {
      two_way_channel_arn: converted,
    }
  ),
  withTwoWayChannelEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"two_way_channel_enabled" expected to be of type "bool"';
    {
      two_way_channel_enabled: converted,
    }
  ),
  withTwoWayChannelRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"two_way_channel_role" expected to be of type "string"';
    {
      two_way_channel_role: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
