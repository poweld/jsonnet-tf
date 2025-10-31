{
  local block = self,
  new(terraformName, bucket, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_intelligent_tiering_configuration",
          type:: "resource",
          attributes:: ["bucket", "id", "name", "region", "status"],
        },
      },
    }
    + block.withBucket(bucket)
    + block.withName(name)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
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
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filter:: {
    local block = self,
    new():: (
      {}
    ),
    withPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    withTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
  },
  tiering:: {
    local block = self,
    new(accessTier, days):: (
      {}
      + block.withAccessTier(accessTier)
      + block.withDays(days)
    ),
    withAccessTier(value):: (
      local converted = value;
      assert std.isString(converted) : '"access_tier" expected to be of type "string"';
      {
        access_tier: converted,
      }
    ),
    withDays(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"days" expected to be of type "number"';
      {
        days: converted,
      }
    ),
  },
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withTiering(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tiering: value,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
  withTieringMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tiering+: converted,
    }
  ),
}
