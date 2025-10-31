{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elasticache_serverless_cache",
          type:: "data",
          attributes:: ["arn", "cache_usage_limits", "create_time", "daily_snapshot_time", "description", "endpoint", "engine", "full_engine_version", "kms_key_id", "major_engine_version", "name", "reader_endpoint", "region", "security_group_ids", "snapshot_retention_limit", "status", "subnet_ids", "user_group_id"],
        },
      },
    }
    + block.withName(name)
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
}
