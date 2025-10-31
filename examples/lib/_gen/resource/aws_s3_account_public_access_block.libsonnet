{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_account_public_access_block",
          type:: "resource",
          attributes:: ["account_id", "block_public_acls", "block_public_policy", "id", "ignore_public_acls", "restrict_public_buckets"],
        },
      },
    }
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withBlockPublicAcls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_acls" expected to be of type "bool"';
    {
      block_public_acls: converted,
    }
  ),
  withBlockPublicPolicy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_policy" expected to be of type "bool"';
    {
      block_public_policy: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIgnorePublicAcls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_public_acls" expected to be of type "bool"';
    {
      ignore_public_acls: converted,
    }
  ),
  withRestrictPublicBuckets(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"restrict_public_buckets" expected to be of type "bool"';
    {
      restrict_public_buckets: converted,
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
