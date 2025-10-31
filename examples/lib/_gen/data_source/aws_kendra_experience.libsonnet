{
  local block = self,
  new(terraformName, experienceId, indexId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kendra_experience",
          type:: "data",
          attributes:: ["arn", "configuration", "created_at", "description", "endpoints", "error_message", "experience_id", "id", "index_id", "name", "region", "role_arn", "status", "updated_at"],
        },
      },
    }
    + block.withExperienceId(experienceId)
    + block.withIndexId(indexId)
  ),
  withExperienceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"experience_id" expected to be of type "string"';
    {
      experience_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIndexId(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_id" expected to be of type "string"';
    {
      index_id: converted,
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
}
