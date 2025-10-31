{
  local block = self,
  new(terraformName, logBucket, roleArnAssociationId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_shield_drt_access_log_bucket_association",
          type:: "resource",
          attributes:: ["id", "log_bucket", "role_arn_association_id"],
        },
      },
    }
    + block.withLogBucket(logBucket)
    + block.withRoleArnAssociationId(roleArnAssociationId)
  ),
  withLogBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_bucket" expected to be of type "string"';
    {
      log_bucket: converted,
    }
  ),
  "#withRoleArnAssociationId":: "Unused",
  withRoleArnAssociationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn_association_id" expected to be of type "string"';
    {
      role_arn_association_id: converted,
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
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
