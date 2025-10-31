{
  local block = self,
  new(terraformName, maxRetentionDays, minRetentionDays, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_logically_air_gapped_vault",
          type:: "resource",
          attributes:: ["arn", "id", "max_retention_days", "min_retention_days", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withMaxRetentionDays(maxRetentionDays)
    + block.withMinRetentionDays(minRetentionDays)
    + block.withName(name)
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
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
