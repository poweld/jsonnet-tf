{
  local block = self,
  new(terraformName, accountName, authenticationMethod, edition, notificationEmail):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_account_subscription",
          type:: "resource",
          attributes:: ["account_name", "account_subscription_status", "active_directory_name", "admin_group", "authentication_method", "author_group", "aws_account_id", "contact_number", "directory_id", "edition", "email_address", "first_name", "iam_identity_center_instance_arn", "id", "last_name", "notification_email", "reader_group", "realm", "region"],
        },
      },
    }
    + block.withAccountName(accountName)
    + block.withAuthenticationMethod(authenticationMethod)
    + block.withEdition(edition)
    + block.withNotificationEmail(notificationEmail)
  ),
  withAccountName(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_name" expected to be of type "string"';
    {
      account_name: converted,
    }
  ),
  withActiveDirectoryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"active_directory_name" expected to be of type "string"';
    {
      active_directory_name: converted,
    }
  ),
  withAdminGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_group" expected to be of type "list"';
    {
      admin_group: converted,
    }
  ),
  withAdminGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_group" expected to be of type "list"';
    {
      admin_group+: converted,
    }
  ),
  withAuthenticationMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_method" expected to be of type "string"';
    {
      authentication_method: converted,
    }
  ),
  withAuthorGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"author_group" expected to be of type "list"';
    {
      author_group: converted,
    }
  ),
  withAuthorGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"author_group" expected to be of type "list"';
    {
      author_group+: converted,
    }
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withContactNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"contact_number" expected to be of type "string"';
    {
      contact_number: converted,
    }
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  withEdition(value):: (
    local converted = value;
    assert std.isString(converted) : '"edition" expected to be of type "string"';
    {
      edition: converted,
    }
  ),
  withEmailAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_address" expected to be of type "string"';
    {
      email_address: converted,
    }
  ),
  withFirstName(value):: (
    local converted = value;
    assert std.isString(converted) : '"first_name" expected to be of type "string"';
    {
      first_name: converted,
    }
  ),
  withIamIdentityCenterInstanceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_identity_center_instance_arn" expected to be of type "string"';
    {
      iam_identity_center_instance_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLastName(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_name" expected to be of type "string"';
    {
      last_name: converted,
    }
  ),
  withNotificationEmail(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_email" expected to be of type "string"';
    {
      notification_email: converted,
    }
  ),
  withReaderGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"reader_group" expected to be of type "list"';
    {
      reader_group: converted,
    }
  ),
  withReaderGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"reader_group" expected to be of type "list"';
    {
      reader_group+: converted,
    }
  ),
  withRealm(value):: (
    local converted = value;
    assert std.isString(converted) : '"realm" expected to be of type "string"';
    {
      realm: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
