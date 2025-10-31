{
  local block = self,
  new(terraformName, folderId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_folder",
          type:: "resource",
          attributes:: ["arn", "aws_account_id", "created_time", "folder_id", "folder_path", "folder_type", "id", "last_updated_time", "name", "parent_folder_arn", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withFolderId(folderId)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withFolderId(value):: (
    local converted = value;
    assert std.isString(converted) : '"folder_id" expected to be of type "string"';
    {
      folder_id: converted,
    }
  ),
  withFolderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"folder_type" expected to be of type "string"';
    {
      folder_type: converted,
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
  withParentFolderArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_folder_arn" expected to be of type "string"';
    {
      parent_folder_arn: converted,
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
  permissions:: {
    local block = self,
    new(actions, principal):: (
      {}
      + block.withActions(actions)
      + block.withPrincipal(principal)
    ),
    withActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions: converted,
      }
    ),
    withActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions+: converted,
      }
    ),
    withPrincipal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withPermissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withPermissionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions+: converted,
    }
  ),
}
