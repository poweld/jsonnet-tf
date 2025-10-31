{
  local block = self,
  new(terraformName, clusterIdentifier, scheduleIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_snapshot_schedule_association",
          type:: "resource",
          attributes:: ["cluster_identifier", "id", "region", "schedule_identifier"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
    + block.withScheduleIdentifier(scheduleIdentifier)
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
  withScheduleIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_identifier" expected to be of type "string"';
    {
      schedule_identifier: converted,
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
