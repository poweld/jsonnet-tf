{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3control_multi_region_access_point",
          type:: "resource",
          attributes:: ["account_id", "alias", "arn", "domain_name", "id", "region", "status"],
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  details:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    public_access_block:: {
      local block = self,
      new():: (
        {}
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
    },
    region:: {
      local block = self,
      new(bucket):: (
        {}
        + block.withBucket(bucket)
      ),
      withBucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      withBucketAccountId(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_account_id" expected to be of type "string"';
        {
          bucket_account_id: converted,
        }
      ),
    },
    withPublicAccessBlock(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        public_access_block: value,
      }
    ),
    withRegion(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region: value,
      }
    ),
    withPublicAccessBlockMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        public_access_block+: converted,
      }
    ),
    withRegionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region+: converted,
      }
    ),
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
  },
  withDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      details: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      details+: converted,
    }
  ),
}
