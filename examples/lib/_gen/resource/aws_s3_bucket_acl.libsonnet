{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_acl",
          type:: "resource",
          attributes:: ["acl", "bucket", "expected_bucket_owner", "id", "region"],
        },
      },
    }
    + block.withBucket(bucket)
  ),
  withAcl(value):: (
    local converted = value;
    assert std.isString(converted) : '"acl" expected to be of type "string"';
    {
      acl: converted,
    }
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
  access_control_policy:: {
    local block = self,
    new():: (
      {}
    ),
    grant:: {
      local block = self,
      new(permission):: (
        {}
        + block.withPermission(permission)
      ),
      withPermission(value):: (
        local converted = value;
        assert std.isString(converted) : '"permission" expected to be of type "string"';
        {
          permission: converted,
        }
      ),
      grantee:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withEmailAddress(value):: (
          local converted = value;
          assert std.isString(converted) : '"email_address" expected to be of type "string"';
          {
            email_address: converted,
          }
        ),
        withId(value):: (
          local converted = value;
          assert std.isString(converted) : '"id" expected to be of type "string"';
          {
            id: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        withUri(value):: (
          local converted = value;
          assert std.isString(converted) : '"uri" expected to be of type "string"';
          {
            uri: converted,
          }
        ),
      },
      withGrantee(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          grantee: value,
        }
      ),
      withGranteeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          grantee+: converted,
        }
      ),
    },
    owner:: {
      local block = self,
      new(id):: (
        {}
        + block.withId(id)
      ),
      withDisplayName(value):: (
        local converted = value;
        assert std.isString(converted) : '"display_name" expected to be of type "string"';
        {
          display_name: converted,
        }
      ),
      withId(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
    },
    withGrant(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grant: value,
      }
    ),
    withOwner(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        owner: value,
      }
    ),
    withGrantMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grant+: converted,
      }
    ),
    withOwnerMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        owner+: converted,
      }
    ),
  },
  withAccessControlPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_control_policy: value,
    }
  ),
  withAccessControlPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_control_policy+: converted,
    }
  ),
}
