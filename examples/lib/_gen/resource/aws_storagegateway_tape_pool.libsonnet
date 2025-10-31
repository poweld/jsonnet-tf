{
  local block = self,
  new(terraformName, poolName, storageClass):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_storagegateway_tape_pool",
          type:: "resource",
          attributes:: ["arn", "id", "pool_name", "region", "retention_lock_time_in_days", "retention_lock_type", "storage_class", "tags", "tags_all"],
        },
      },
    }
    + block.withPoolName(poolName)
    + block.withStorageClass(storageClass)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPoolName(value):: (
    local converted = value;
    assert std.isString(converted) : '"pool_name" expected to be of type "string"';
    {
      pool_name: converted,
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
  withRetentionLockTimeInDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_lock_time_in_days" expected to be of type "number"';
    {
      retention_lock_time_in_days: converted,
    }
  ),
  withRetentionLockType(value):: (
    local converted = value;
    assert std.isString(converted) : '"retention_lock_type" expected to be of type "string"';
    {
      retention_lock_type: converted,
    }
  ),
  withStorageClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_class" expected to be of type "string"';
    {
      storage_class: converted,
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
