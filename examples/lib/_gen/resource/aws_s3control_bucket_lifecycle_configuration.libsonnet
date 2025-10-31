{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3control_bucket_lifecycle_configuration",
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
    new(id):: (
      {}
      + block.withId(id)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    abort_incomplete_multipart_upload:: {
      local block = self,
      new(daysAfterInitiation):: (
        {}
        + block.withDaysAfterInitiation(daysAfterInitiation)
      ),
      withDaysAfterInitiation(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days_after_initiation" expected to be of type "number"';
        {
          days_after_initiation: converted,
        }
      ),
    },
    expiration:: {
      local block = self,
      new():: (
        {}
      ),
      withDate(value):: (
        local converted = value;
        assert std.isString(converted) : '"date" expected to be of type "string"';
        {
          date: converted,
        }
      ),
      withDays(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
      withExpiredObjectDeleteMarker(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"expired_object_delete_marker" expected to be of type "bool"';
        {
          expired_object_delete_marker: converted,
        }
      ),
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
    withAbortIncompleteMultipartUpload(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        abort_incomplete_multipart_upload: value,
      }
    ),
    withExpiration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration: value,
      }
    ),
    withFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    withAbortIncompleteMultipartUploadMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        abort_incomplete_multipart_upload+: converted,
      }
    ),
    withExpirationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration+: converted,
      }
    ),
    withFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
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
