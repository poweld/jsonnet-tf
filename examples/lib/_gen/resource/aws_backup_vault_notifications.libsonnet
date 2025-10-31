{
  local block = self,
  new(terraformName, backupVaultEvents, backupVaultName, snsTopicArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_vault_notifications",
          type:: "resource",
          attributes:: ["backup_vault_arn", "backup_vault_events", "backup_vault_name", "id", "region", "sns_topic_arn"],
        },
      },
    }
    + block.withBackupVaultEvents(backupVaultEvents)
    + block.withBackupVaultName(backupVaultName)
    + block.withSnsTopicArn(snsTopicArn)
  ),
  withBackupVaultEvents(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"backup_vault_events" expected to be of type "set"';
    {
      backup_vault_events: converted,
    }
  ),
  withBackupVaultEventsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"backup_vault_events" expected to be of type "set"';
    {
      backup_vault_events+: converted,
    }
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSnsTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
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
