{
  local block = self,
  new(terraformName, backupVaultName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_vault_lock_configuration",
          type:: "resource",
          attributes:: ["backup_vault_arn", "backup_vault_name", "changeable_for_days", "id", "max_retention_days", "min_retention_days", "region"],
        },
      },
    }
    + block.withBackupVaultName(backupVaultName)
  ),
  withBackupVaultName(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_vault_name" expected to be of type "string"';
    {
      backup_vault_name: converted,
    }
  ),
  withChangeableForDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"changeable_for_days" expected to be of type "number"';
    {
      changeable_for_days: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxRetentionDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retention_days" expected to be of type "number"';
    {
      max_retention_days: converted,
    }
  ),
  withMinRetentionDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_retention_days" expected to be of type "number"';
    {
      min_retention_days: converted,
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
}
