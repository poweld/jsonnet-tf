{
  local block = self,
  new(terraformName, accountId, detectorId, email):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_guardduty_member",
          type:: "resource",
          attributes:: ["account_id", "detector_id", "disable_email_notification", "email", "id", "invitation_message", "invite", "region", "relationship_status"],
        },
      },
    }
    + block.withAccountId(accountId)
    + block.withDetectorId(detectorId)
    + block.withEmail(email)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withDetectorId(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
    }
  ),
  withDisableEmailNotification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_email_notification" expected to be of type "bool"';
    {
      disable_email_notification: converted,
    }
  ),
  withEmail(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInvitationMessage(value):: (
    local converted = value;
    assert std.isString(converted) : '"invitation_message" expected to be of type "string"';
    {
      invitation_message: converted,
    }
  ),
  withInvite(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"invite" expected to be of type "bool"';
    {
      invite: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
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
