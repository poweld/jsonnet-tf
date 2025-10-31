{
  local block = self,
  new(terraformName, accountId, email):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_macie2_member",
          type:: "resource",
          attributes:: ["account_id", "administrator_account_id", "arn", "email", "id", "invitation_disable_email_notification", "invitation_message", "invite", "invited_at", "master_account_id", "region", "relationship_status", "status", "tags", "tags_all", "updated_at"],
        },
      },
    }
    + block.withAccountId(accountId)
    + block.withEmail(email)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
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
  withInvitationDisableEmailNotification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"invitation_disable_email_notification" expected to be of type "bool"';
    {
      invitation_disable_email_notification: converted,
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
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
