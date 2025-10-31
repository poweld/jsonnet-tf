{
  local block = self,
  new(terraformName, email, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_account",
          type:: "resource",
          attributes:: ["arn", "close_on_deletion", "create_govcloud", "email", "govcloud_id", "iam_user_access_to_billing", "id", "joined_method", "joined_timestamp", "name", "parent_id", "role_name", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withEmail(email)
    + block.withName(name)
  ),
  withCloseOnDeletion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"close_on_deletion" expected to be of type "bool"';
    {
      close_on_deletion: converted,
    }
  ),
  withCreateGovcloud(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"create_govcloud" expected to be of type "bool"';
    {
      create_govcloud: converted,
    }
  ),
  withEmail(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  withIamUserAccessToBilling(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_user_access_to_billing" expected to be of type "string"';
    {
      iam_user_access_to_billing: converted,
    }
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
  withParentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_id" expected to be of type "string"';
    {
      parent_id: converted,
    }
  ),
  withRoleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_name" expected to be of type "string"';
    {
      role_name: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
