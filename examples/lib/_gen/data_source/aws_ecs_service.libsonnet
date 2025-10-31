{
  local block = self,
  new(terraformName, clusterArn, serviceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_service",
          type:: "data",
          attributes:: ["arn", "availability_zone_rebalancing", "cluster_arn", "desired_count", "id", "launch_type", "load_balancer", "region", "scheduling_strategy", "service_name", "tags", "task_definition"],
        },
      },
    }
    + block.withClusterArn(clusterArn)
    + block.withServiceName(serviceName)
  ),
  withClusterArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_arn" expected to be of type "string"';
    {
      cluster_arn: converted,
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
  withServiceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
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
