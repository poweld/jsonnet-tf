{
  local block = self,
  new(terraformName, migrationType, replicationInstanceArn, replicationTaskId, sourceEndpointArn, tableMappings, targetEndpointArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_replication_task",
          type:: "resource",
          attributes:: ["cdc_start_position", "cdc_start_time", "id", "migration_type", "region", "replication_instance_arn", "replication_task_arn", "replication_task_id", "replication_task_settings", "resource_identifier", "source_endpoint_arn", "start_replication_task", "status", "table_mappings", "tags", "tags_all", "target_endpoint_arn"],
        },
      },
    }
    + block.withMigrationType(migrationType)
    + block.withReplicationInstanceArn(replicationInstanceArn)
    + block.withReplicationTaskId(replicationTaskId)
    + block.withSourceEndpointArn(sourceEndpointArn)
    + block.withTableMappings(tableMappings)
    + block.withTargetEndpointArn(targetEndpointArn)
  ),
  withCdcStartPosition(value):: (
    local converted = value;
    assert std.isString(converted) : '"cdc_start_position" expected to be of type "string"';
    {
      cdc_start_position: converted,
    }
  ),
  withCdcStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"cdc_start_time" expected to be of type "string"';
    {
      cdc_start_time: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMigrationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"migration_type" expected to be of type "string"';
    {
      migration_type: converted,
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
  withReplicationInstanceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_instance_arn" expected to be of type "string"';
    {
      replication_instance_arn: converted,
    }
  ),
  withReplicationTaskId(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_task_id" expected to be of type "string"';
    {
      replication_task_id: converted,
    }
  ),
  withReplicationTaskSettings(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_task_settings" expected to be of type "string"';
    {
      replication_task_settings: converted,
    }
  ),
  withResourceIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_identifier" expected to be of type "string"';
    {
      resource_identifier: converted,
    }
  ),
  withSourceEndpointArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_endpoint_arn" expected to be of type "string"';
    {
      source_endpoint_arn: converted,
    }
  ),
  withStartReplicationTask(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_replication_task" expected to be of type "bool"';
    {
      start_replication_task: converted,
    }
  ),
  withTableMappings(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_mappings" expected to be of type "string"';
    {
      table_mappings: converted,
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
  withTargetEndpointArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_endpoint_arn" expected to be of type "string"';
    {
      target_endpoint_arn: converted,
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
