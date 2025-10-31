{
  local block = self,
  new(terraformName, fileSystemId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_efs_backup_policy",
          type:: "resource",
          attributes:: ["file_system_id", "id", "region"],
        },
      },
    }
    + block.withFileSystemId(fileSystemId)
  ),
  withFileSystemId(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  backup_policy:: {
    local block = self,
    new(status):: (
      {}
      + block.withStatus(status)
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  withBackupPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      backup_policy: value,
    }
  ),
  withBackupPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      backup_policy+: converted,
    }
  ),
}
