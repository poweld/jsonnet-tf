{
  local block = self,
  new(terraformName, containerName, taskDefinition):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_container_definition",
          type:: "data",
          attributes:: ["container_name", "cpu", "disable_networking", "docker_labels", "environment", "id", "image", "image_digest", "memory", "memory_reservation", "region", "task_definition"],
        },
      },
    }
    + block.withContainerName(containerName)
    + block.withTaskDefinition(taskDefinition)
  ),
  withContainerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_name" expected to be of type "string"';
    {
      container_name: converted,
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
  withTaskDefinition(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_definition" expected to be of type "string"';
    {
      task_definition: converted,
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
