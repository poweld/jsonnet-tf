{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_user",
          type:: "resource",
          attributes:: ["arn", "force_destroy", "id", "name", "path", "permissions_boundary", "tags", "tags_all", "unique_id"],
        },
      },
    }
    + block.withName(name)
  ),
  "#withForceDestroy":: "Delete user even if it has non-Terraform-managed IAM access keys, login profile or MFA devices",
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
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
  withPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  withPermissionsBoundary(value):: (
    local converted = value;
    assert std.isString(converted) : '"permissions_boundary" expected to be of type "string"';
    {
      permissions_boundary: converted,
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
}
