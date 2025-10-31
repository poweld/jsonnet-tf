{
  local block = self,
  new(terraformName, backupVaultName, policy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_vault_policy",
          type:: "resource",
          attributes:: ["backup_vault_arn", "backup_vault_name", "id", "policy", "region"],
        },
      },
    }
    + block.withBackupVaultName(backupVaultName)
    + block.withPolicy(policy)
  ),
  withBackupVaultName(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_vault_name" expected to be of type "string"';
    {
      backup_vault_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
