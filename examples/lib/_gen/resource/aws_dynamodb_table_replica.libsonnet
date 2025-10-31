{
  local block = self,
  new(terraformName, globalTableArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dynamodb_table_replica",
          type:: "resource",
          attributes:: ["arn", "deletion_protection_enabled", "global_table_arn", "id", "kms_key_arn", "point_in_time_recovery", "region", "table_class_override", "tags", "tags_all"],
        },
      },
    }
    + block.withGlobalTableArn(globalTableArn)
  ),
  withDeletionProtectionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection_enabled" expected to be of type "bool"';
    {
      deletion_protection_enabled: converted,
    }
  ),
  withGlobalTableArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_table_arn" expected to be of type "string"';
    {
      global_table_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  withPointInTimeRecovery(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"point_in_time_recovery" expected to be of type "bool"';
    {
      point_in_time_recovery: converted,
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
  withTableClassOverride(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_class_override" expected to be of type "string"';
    {
      table_class_override: converted,
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
