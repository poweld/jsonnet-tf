{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codebuild_report_group",
          type:: "resource",
          attributes:: ["arn", "created", "delete_reports", "id", "name", "region", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),
  withDeleteReports(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_reports" expected to be of type "bool"';
    {
      delete_reports: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  export_config:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    s3_destination:: {
      local block = self,
      new(bucket, encryptionKey):: (
        {}
        + block.withBucket(bucket)
        + block.withEncryptionKey(encryptionKey)
      ),
      withBucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      withEncryptionDisabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encryption_disabled" expected to be of type "bool"';
        {
          encryption_disabled: converted,
        }
      ),
      withEncryptionKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"encryption_key" expected to be of type "string"';
        {
          encryption_key: converted,
        }
      ),
      withPackaging(value):: (
        local converted = value;
        assert std.isString(converted) : '"packaging" expected to be of type "string"';
        {
          packaging: converted,
        }
      ),
      withPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
    },
    withS3Destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination: value,
      }
    ),
    withS3DestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination+: converted,
      }
    ),
  },
  withExportConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      export_config: value,
    }
  ),
  withExportConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      export_config+: converted,
    }
  ),
}
