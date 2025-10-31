{
  local block = self,
  new(terraformName, applicationId, configurationProfileId, configurationVersion, deploymentStrategyId, environmentId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appconfig_deployment",
          type:: "resource",
          attributes:: ["application_id", "arn", "configuration_profile_id", "configuration_version", "deployment_number", "deployment_strategy_id", "description", "environment_id", "id", "kms_key_arn", "kms_key_identifier", "region", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withApplicationId(applicationId)
    + block.withConfigurationProfileId(configurationProfileId)
    + block.withConfigurationVersion(configurationVersion)
    + block.withDeploymentStrategyId(deploymentStrategyId)
    + block.withEnvironmentId(environmentId)
  ),
  withApplicationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  withConfigurationProfileId(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_profile_id" expected to be of type "string"';
    {
      configuration_profile_id: converted,
    }
  ),
  withConfigurationVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_version" expected to be of type "string"';
    {
      configuration_version: converted,
    }
  ),
  withDeploymentStrategyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_strategy_id" expected to be of type "string"';
    {
      deployment_strategy_id: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnvironmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
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
}
