{
  local block = self,
  new(terraformName, envId, projectName, spaceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codecatalyst_dev_environment",
          type:: "data",
          attributes:: ["alias", "creator_id", "env_id", "id", "ides", "inactivity_timeout_minutes", "instance_type", "last_updated_time", "persistent_storage", "project_name", "region", "space_name", "status", "status_reason", "tags"],
        },
      },
    }
    + block.withEnvId(envId)
    + block.withProjectName(projectName)
    + block.withSpaceName(spaceName)
  ),
  withAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  withCreatorId(value):: (
    local converted = value;
    assert std.isString(converted) : '"creator_id" expected to be of type "string"';
    {
      creator_id: converted,
    }
  ),
  withEnvId(value):: (
    local converted = value;
    assert std.isString(converted) : '"env_id" expected to be of type "string"';
    {
      env_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProjectName(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_name" expected to be of type "string"';
    {
      project_name: converted,
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
  withSpaceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"space_name" expected to be of type "string"';
    {
      space_name: converted,
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
  repositories:: {
    local block = self,
    new():: (
      {}
    ),
  },
  withRepositories(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repositories: value,
    }
  ),
  withRepositoriesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repositories+: converted,
    }
  ),
}
