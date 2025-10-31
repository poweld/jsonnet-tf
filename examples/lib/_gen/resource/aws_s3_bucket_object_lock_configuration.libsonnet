{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_object_lock_configuration",
          type:: "resource",
          attributes:: ["bucket", "expected_bucket_owner", "id", "object_lock_enabled", "region", "token"],
        },
      },
    }
    + block.withBucket(bucket)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withExpectedBucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withObjectLockEnabled(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_lock_enabled" expected to be of type "string"';
    {
      object_lock_enabled: converted,
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
  withToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"token" expected to be of type "string"';
    {
      token: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  rule:: {
    local block = self,
    new():: (
      {}
    ),
    default_retention:: {
      local block = self,
      new():: (
        {}
      ),
      withDays(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
      withMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"mode" expected to be of type "string"';
        {
          mode: converted,
        }
      ),
      withYears(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"years" expected to be of type "number"';
        {
          years: converted,
        }
      ),
    },
    withDefaultRetention(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_retention: value,
      }
    ),
    withDefaultRetentionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_retention+: converted,
      }
    ),
  },
  withRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  withRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
