{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_cors_configuration",
          type:: "resource",
          attributes:: ["bucket", "expected_bucket_owner", "id", "region"],
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
  cors_rule:: {
    local block = self,
    new(allowedMethods, allowedOrigins):: (
      {}
      + block.withAllowedMethods(allowedMethods)
      + block.withAllowedOrigins(allowedOrigins)
    ),
    withAllowedHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_headers" expected to be of type "set"';
      {
        allowed_headers: converted,
      }
    ),
    withAllowedHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_headers" expected to be of type "set"';
      {
        allowed_headers+: converted,
      }
    ),
    withAllowedMethods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods: converted,
      }
    ),
    withAllowedMethodsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods+: converted,
      }
    ),
    withAllowedOrigins(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_origins" expected to be of type "set"';
      {
        allowed_origins: converted,
      }
    ),
    withAllowedOriginsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_origins" expected to be of type "set"';
      {
        allowed_origins+: converted,
      }
    ),
    withExposeHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"expose_headers" expected to be of type "set"';
      {
        expose_headers: converted,
      }
    ),
    withExposeHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"expose_headers" expected to be of type "set"';
      {
        expose_headers+: converted,
      }
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withMaxAgeSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_age_seconds" expected to be of type "number"';
      {
        max_age_seconds: converted,
      }
    ),
  },
  withCorsRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_rule: value,
    }
  ),
  withCorsRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_rule+: converted,
    }
  ),
}
