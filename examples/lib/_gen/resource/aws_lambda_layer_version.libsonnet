{
  local block = self,
  new(terraformName, layerName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_layer_version",
          type:: "resource",
          attributes:: ["arn", "code_sha256", "compatible_architectures", "compatible_runtimes", "created_date", "description", "filename", "id", "layer_arn", "layer_name", "license_info", "region", "s3_bucket", "s3_key", "s3_object_version", "signing_job_arn", "signing_profile_version_arn", "skip_destroy", "source_code_hash", "source_code_size", "version"],
        },
      },
    }
    + block.withLayerName(layerName)
  ),
  withCompatibleArchitectures(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compatible_architectures" expected to be of type "set"';
    {
      compatible_architectures: converted,
    }
  ),
  withCompatibleArchitecturesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compatible_architectures" expected to be of type "set"';
    {
      compatible_architectures+: converted,
    }
  ),
  withCompatibleRuntimes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compatible_runtimes" expected to be of type "set"';
    {
      compatible_runtimes: converted,
    }
  ),
  withCompatibleRuntimesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compatible_runtimes" expected to be of type "set"';
    {
      compatible_runtimes+: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withLayerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"layer_name" expected to be of type "string"';
    {
      layer_name: converted,
    }
  ),
  withLicenseInfo(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_info" expected to be of type "string"';
    {
      license_info: converted,
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
  withS3Bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
    {
      s3_bucket: converted,
    }
  ),
  withS3Key(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key" expected to be of type "string"';
    {
      s3_key: converted,
    }
  ),
  withS3ObjectVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_object_version" expected to be of type "string"';
    {
      s3_object_version: converted,
    }
  ),
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  withSourceCodeHash(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_code_hash" expected to be of type "string"';
    {
      source_code_hash: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
