{
  local block = self,
  new(terraformName, deploymentDurationInMinutes, growthFactor, name, replicateTo):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appconfig_deployment_strategy",
          type:: "resource",
          attributes:: ["arn", "deployment_duration_in_minutes", "description", "final_bake_time_in_minutes", "growth_factor", "growth_type", "id", "name", "region", "replicate_to", "tags", "tags_all"],
        },
      },
    }
    + block.withDeploymentDurationInMinutes(deploymentDurationInMinutes)
    + block.withGrowthFactor(growthFactor)
    + block.withName(name)
    + block.withReplicateTo(replicateTo)
  ),
  withDeploymentDurationInMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deployment_duration_in_minutes" expected to be of type "number"';
    {
      deployment_duration_in_minutes: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFinalBakeTimeInMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"final_bake_time_in_minutes" expected to be of type "number"';
    {
      final_bake_time_in_minutes: converted,
    }
  ),
  withGrowthFactor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"growth_factor" expected to be of type "number"';
    {
      growth_factor: converted,
    }
  ),
  withGrowthType(value):: (
    local converted = value;
    assert std.isString(converted) : '"growth_type" expected to be of type "string"';
    {
      growth_type: converted,
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
  withReplicateTo(value):: (
    local converted = value;
    assert std.isString(converted) : '"replicate_to" expected to be of type "string"';
    {
      replicate_to: converted,
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
