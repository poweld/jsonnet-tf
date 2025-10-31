{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_ownership_controls",
          type:: "resource",
          attributes:: ["bucket", "id", "region"],
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
  rule:: {
    local block = self,
    new(objectOwnership):: (
      {}
      + block.withObjectOwnership(objectOwnership)
    ),
    withObjectOwnership(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_ownership" expected to be of type "string"';
      {
        object_ownership: converted,
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
