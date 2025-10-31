{
  local block = self,
  new(terraformName, clusterIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_logging",
          type:: "resource",
          attributes:: ["bucket_name", "cluster_identifier", "id", "log_destination_type", "log_exports", "region", "s3_key_prefix"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
  ),
  withBucketName(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
    {
      bucket_name: converted,
    }
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withLogDestinationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_destination_type" expected to be of type "string"';
    {
      log_destination_type: converted,
    }
  ),
  withLogExports(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_exports" expected to be of type "set"';
    {
      log_exports: converted,
    }
  ),
  withLogExportsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_exports" expected to be of type "set"';
    {
      log_exports+: converted,
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
  withS3KeyPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
    {
      s3_key_prefix: converted,
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
