{
  local block = self,
  new(terraformName, replicationTaskId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_replication_task",
          type:: "data",
          attributes:: ["cdc_start_position", "cdc_start_time", "id", "migration_type", "region", "replication_instance_arn", "replication_task_arn", "replication_task_id", "replication_task_settings", "source_endpoint_arn", "start_replication_task", "status", "table_mappings", "tags", "target_endpoint_arn"],
        },
      },
    }
    + block.withReplicationTaskId(replicationTaskId)
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
  withReplicationTaskId(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_task_id" expected to be of type "string"';
    {
      replication_task_id: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
