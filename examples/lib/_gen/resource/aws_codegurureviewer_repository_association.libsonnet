{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codegurureviewer_repository_association",
          type:: "resource",
          attributes:: ["arn", "association_id", "connection_arn", "id", "name", "owner", "provider_type", "region", "s3_repository_details", "state", "state_reason", "tags", "tags_all"],
        },
      },
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
  kms_key_details:: {
    local block = self,
    new():: (
      {}
    ),
    withEncryptionOption(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_option" expected to be of type "string"';
      {
        encryption_option: converted,
      }
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
  },
  repository:: {
    local block = self,
    new():: (
      {}
    ),
    bitbucket:: {
      local block = self,
      new(connectionArn, name, owner):: (
        {}
        + block.withConnectionArn(connectionArn)
        + block.withName(name)
        + block.withOwner(owner)
      ),
      withConnectionArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"connection_arn" expected to be of type "string"';
        {
          connection_arn: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withOwner(value):: (
        local converted = value;
        assert std.isString(converted) : '"owner" expected to be of type "string"';
        {
          owner: converted,
        }
      ),
    },
    codecommit:: {
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
    },
    github_enterprise_server:: {
      local block = self,
      new(connectionArn, name, owner):: (
        {}
        + block.withConnectionArn(connectionArn)
        + block.withName(name)
        + block.withOwner(owner)
      ),
      withConnectionArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"connection_arn" expected to be of type "string"';
        {
          connection_arn: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withOwner(value):: (
        local converted = value;
        assert std.isString(converted) : '"owner" expected to be of type "string"';
        {
          owner: converted,
        }
      ),
    },
    s3_bucket:: {
      local block = self,
      new(bucketName, name):: (
        {}
        + block.withBucketName(bucketName)
        + block.withName(name)
      ),
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    withBitbucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bitbucket: value,
      }
    ),
    withCodecommit(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        codecommit: value,
      }
    ),
    withGithubEnterpriseServer(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        github_enterprise_server: value,
      }
    ),
    withS3Bucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_bucket: value,
      }
    ),
    withBitbucketMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bitbucket+: converted,
      }
    ),
    withCodecommitMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        codecommit+: converted,
      }
    ),
    withGithubEnterpriseServerMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        github_enterprise_server+: converted,
      }
    ),
    withS3BucketMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_bucket+: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withKmsKeyDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kms_key_details: value,
    }
  ),
  withRepository(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repository: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withKmsKeyDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kms_key_details+: converted,
    }
  ),
  withRepositoryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repository+: converted,
    }
  ),
}
