{
  local block = self,
  new(terraformName, engine, engineVersion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_custom_db_engine_version",
          type:: "resource",
          attributes:: ["arn", "create_time", "database_installation_files_s3_bucket_name", "database_installation_files_s3_prefix", "db_parameter_group_family", "description", "engine", "engine_version", "filename", "id", "image_id", "kms_key_id", "major_engine_version", "manifest", "manifest_computed", "manifest_hash", "region", "source_image_id", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withEngine(engine)
    + block.withEngineVersion(engineVersion)
  ),
  withDatabaseInstallationFilesS3BucketName(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_installation_files_s3_bucket_name" expected to be of type "string"';
    {
      database_installation_files_s3_bucket_name: converted,
    }
  ),
  withDatabaseInstallationFilesS3Prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_installation_files_s3_prefix" expected to be of type "string"';
    {
      database_installation_files_s3_prefix: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withFilename(value):: (
    local converted = value;
    assert std.isString(converted) : '"filename" expected to be of type "string"';
    {
      filename: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withManifest(value):: (
    local converted = value;
    assert std.isString(converted) : '"manifest" expected to be of type "string"';
    {
      manifest: converted,
    }
  ),
  withManifestHash(value):: (
    local converted = value;
    assert std.isString(converted) : '"manifest_hash" expected to be of type "string"';
    {
      manifest_hash: converted,
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
  withSourceImageId(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_image_id" expected to be of type "string"';
    {
      source_image_id: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
