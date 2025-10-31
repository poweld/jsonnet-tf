{
  local block = self,
  new(terraformName, appId, environmentName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_amplify_backend_environment",
          type:: "resource",
          attributes:: ["app_id", "arn", "deployment_artifacts", "environment_name", "id", "region", "stack_name"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withEnvironmentName(environmentName)
  ),
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  withDeploymentArtifacts(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_artifacts" expected to be of type "string"';
    {
      deployment_artifacts: converted,
    }
  ),
  withEnvironmentName(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_name" expected to be of type "string"';
    {
      environment_name: converted,
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
  withStackName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_name" expected to be of type "string"';
    {
      stack_name: converted,
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
