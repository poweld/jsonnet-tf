{
  local block = self,
  new(terraformName, packageName, packageType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_opensearch_package",
          type:: "resource",
          attributes:: ["available_package_version", "engine_version", "id", "package_description", "package_id", "package_name", "package_type", "region"],
        },
      },
    }
    + block.withPackageName(packageName)
    + block.withPackageType(packageType)
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPackageDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"package_description" expected to be of type "string"';
    {
      package_description: converted,
    }
  ),
  withPackageName(value):: (
    local converted = value;
    assert std.isString(converted) : '"package_name" expected to be of type "string"';
    {
      package_name: converted,
    }
  ),
  withPackageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"package_type" expected to be of type "string"';
    {
      package_type: converted,
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
  package_source:: {
    local block = self,
    new(s3BucketName, s3Key):: (
      {}
      + block.withS3BucketName(s3BucketName)
      + block.withS3Key(s3Key)
    ),
    withS3BucketName(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
      {
        s3_bucket_name: converted,
      }
    ),
    withS3Key(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_key" expected to be of type "string"';
      {
        s3_key: converted,
      }
    ),
  },
  withPackageSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      package_source: value,
    }
  ),
  withPackageSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      package_source+: converted,
    }
  ),
}
