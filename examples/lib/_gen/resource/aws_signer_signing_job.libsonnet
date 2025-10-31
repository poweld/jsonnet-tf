{
  local block = self,
  new(terraformName, profileName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_signer_signing_job",
          type:: "resource",
          attributes:: ["completed_at", "created_at", "id", "ignore_signing_job_failure", "job_id", "job_invoker", "job_owner", "platform_display_name", "platform_id", "profile_name", "profile_version", "region", "requested_by", "revocation_record", "signature_expires_at", "signed_object", "status", "status_reason"],
        },
      },
    }
    + block.withProfileName(profileName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIgnoreSigningJobFailure(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_signing_job_failure" expected to be of type "bool"';
    {
      ignore_signing_job_failure: converted,
    }
  ),
  withProfileName(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_name" expected to be of type "string"';
    {
      profile_name: converted,
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
  destination:: {
    local block = self,
    new():: (
      {}
    ),
    s3:: {
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
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
    },
    withS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new():: (
      {}
    ),
    s3:: {
      local block = self,
      new(bucket, key, version):: (
        {}
        + block.withBucket(bucket)
        + block.withKey(key)
        + block.withVersion(version)
      ),
      withBucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"version" expected to be of type "string"';
        {
          version: converted,
        }
      ),
    },
    withS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
  },
  withDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination: value,
    }
  ),
  withSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  withDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination+: converted,
    }
  ),
  withSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}
