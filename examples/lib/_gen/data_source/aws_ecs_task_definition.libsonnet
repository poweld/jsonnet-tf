{
  local block = self,
  new(terraformName, taskDefinition):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_task_definition",
          type:: "data",
          attributes:: ["arn", "arn_without_revision", "container_definitions", "cpu", "enable_fault_injection", "ephemeral_storage", "execution_role_arn", "family", "id", "ipc_mode", "memory", "network_mode", "pid_mode", "placement_constraints", "proxy_configuration", "region", "requires_compatibilities", "revision", "runtime_platform", "status", "task_definition", "task_role_arn", "volume"],
        },
      },
    }
    + block.withTaskDefinition(taskDefinition)
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
