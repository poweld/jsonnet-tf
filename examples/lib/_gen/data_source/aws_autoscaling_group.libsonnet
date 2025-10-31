{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_autoscaling_group",
          type:: "data",
          attributes:: ["arn", "availability_zones", "default_cooldown", "desired_capacity", "desired_capacity_type", "enabled_metrics", "health_check_grace_period", "health_check_type", "id", "instance_maintenance_policy", "launch_configuration", "launch_template", "load_balancers", "max_instance_lifetime", "max_size", "min_size", "mixed_instances_policy", "name", "new_instances_protected_from_scale_in", "placement_group", "predicted_capacity", "region", "service_linked_role_arn", "status", "suspended_processes", "tag", "target_group_arns", "termination_policies", "traffic_source", "vpc_zone_identifier", "warm_pool", "warm_pool_size"],
        },
      },
    }
    + block.withName(name)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
