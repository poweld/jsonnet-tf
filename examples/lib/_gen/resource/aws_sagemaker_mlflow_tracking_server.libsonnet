{
  local block = self,
  new(terraformName, artifactStoreUri, roleArn, trackingServerName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_mlflow_tracking_server",
          type:: "resource",
          attributes:: ["arn", "artifact_store_uri", "automatic_model_registration", "id", "mlflow_version", "region", "role_arn", "tags", "tags_all", "tracking_server_name", "tracking_server_size", "tracking_server_url", "weekly_maintenance_window_start"],
        },
      },
    }
    + block.withArtifactStoreUri(artifactStoreUri)
    + block.withRoleArn(roleArn)
    + block.withTrackingServerName(trackingServerName)
  ),
  withArtifactStoreUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"artifact_store_uri" expected to be of type "string"';
    {
      artifact_store_uri: converted,
    }
  ),
  withAutomaticModelRegistration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"automatic_model_registration" expected to be of type "bool"';
    {
      automatic_model_registration: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMlflowVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"mlflow_version" expected to be of type "string"';
    {
      mlflow_version: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  withTrackingServerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracking_server_name" expected to be of type "string"';
    {
      tracking_server_name: converted,
    }
  ),
  withTrackingServerSize(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracking_server_size" expected to be of type "string"';
    {
      tracking_server_size: converted,
    }
  ),
  withWeeklyMaintenanceWindowStart(value):: (
    local converted = value;
    assert std.isString(converted) : '"weekly_maintenance_window_start" expected to be of type "string"';
    {
      weekly_maintenance_window_start: converted,
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
