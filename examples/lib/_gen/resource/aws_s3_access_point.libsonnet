{
  local block = self,
  new(terraformName, bucket, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_access_point",
          type:: "resource",
          attributes:: ["account_id", "alias", "arn", "bucket", "bucket_account_id", "domain_name", "endpoints", "has_public_access_policy", "id", "name", "network_origin", "policy", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withBucket(bucket)
    + block.withName(name)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
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
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  public_access_block_configuration:: {
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
  vpc_configuration:: {
    local block = self,
    new(vpcId):: (
      {}
      + block.withVpcId(vpcId)
    ),
    withVpcId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  withPublicAccessBlockConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_access_block_configuration: value,
    }
  ),
  withVpcConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration: value,
    }
  ),
  withPublicAccessBlockConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_access_block_configuration+: converted,
    }
  ),
  withVpcConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration+: converted,
    }
  ),
}
