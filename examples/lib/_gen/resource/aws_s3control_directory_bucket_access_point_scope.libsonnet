{
  local block = self,
  new(terraformName, accountId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3control_directory_bucket_access_point_scope",
          type:: "resource",
          attributes:: ["account_id", "name", "region"],
        },
      },
    }
    + block.withAccountId(accountId)
    + block.withName(name)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  scope:: {
    local block = self,
    new():: (
      {}
    ),
    withPermissions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"permissions" expected to be of type "list"';
      {
        permissions: converted,
      }
    ),
    withPermissionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"permissions" expected to be of type "list"';
      {
        permissions+: converted,
      }
    ),
    withPrefixes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"prefixes" expected to be of type "list"';
      {
        prefixes: converted,
      }
    ),
    withPrefixesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"prefixes" expected to be of type "list"';
      {
        prefixes+: converted,
      }
    ),
  },
  withScope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope: value,
    }
  ),
  withScopeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope+: converted,
    }
  ),
}
