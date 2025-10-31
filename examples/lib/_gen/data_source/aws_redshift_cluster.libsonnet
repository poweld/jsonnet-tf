{
  local block = self,
  new(terraformName, clusterIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_cluster",
          type:: "data",
          attributes:: ["allow_version_upgrade", "aqua_configuration_status", "arn", "automated_snapshot_retention_period", "availability_zone", "availability_zone_relocation_enabled", "bucket_name", "cluster_identifier", "cluster_namespace_arn", "cluster_nodes", "cluster_parameter_group_name", "cluster_public_key", "cluster_revision_number", "cluster_subnet_group_name", "cluster_type", "cluster_version", "database_name", "default_iam_role_arn", "elastic_ip", "enable_logging", "encrypted", "endpoint", "enhanced_vpc_routing", "iam_roles", "id", "kms_key_id", "log_destination_type", "log_exports", "maintenance_track_name", "manual_snapshot_retention_period", "master_username", "multi_az", "node_type", "number_of_nodes", "port", "preferred_maintenance_window", "publicly_accessible", "region", "s3_key_prefix", "tags", "vpc_id", "vpc_security_group_ids"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
