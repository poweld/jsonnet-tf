{
  local block = self,
  new(terraformName, enabled):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_shield_proactive_engagement",
          type:: "resource",
          attributes:: ["enabled", "id"],
        },
      },
    }
    + block.withEnabled(enabled)
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  emergency_contact:: {
    local block = self,
    new(emailAddress):: (
      {}
      + block.withEmailAddress(emailAddress)
    ),
    withContactNotes(value):: (
      local converted = value;
      assert std.isString(converted) : '"contact_notes" expected to be of type "string"';
      {
        contact_notes: converted,
      }
    ),
    withEmailAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_address" expected to be of type "string"';
      {
        email_address: converted,
      }
    ),
    withPhoneNumber(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_number" expected to be of type "string"';
      {
        phone_number: converted,
      }
    ),
  },
  withEmergencyContact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      emergency_contact: value,
    }
  ),
  withEmergencyContactMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      emergency_contact+: converted,
    }
  ),
}
