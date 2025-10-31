{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dynamodb_table",
          type:: "data",
          attributes:: ["arn", "attribute", "billing_mode", "deletion_protection_enabled", "global_secondary_index", "hash_key", "id", "local_secondary_index", "name", "on_demand_throughput", "point_in_time_recovery", "range_key", "read_capacity", "region", "replica", "stream_arn", "stream_enabled", "stream_label", "stream_view_type", "table_class", "tags", "ttl", "warm_throughput", "write_capacity"],
        },
      },
    }
    + block.withName(name)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
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
  server_side_encryption:: {
    local block = self,
    new():: (
      {}
    ),
  },
  withServerSideEncryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption: value,
    }
  ),
  withServerSideEncryptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption+: converted,
    }
  ),
}
