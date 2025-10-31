{
  local block = self,
  new(terraformName, clusterArn, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53recoverycontrolconfig_routing_control",
          type:: "resource",
          attributes:: ["arn", "cluster_arn", "control_panel_arn", "id", "name", "status"],
        },
      },
    }
    + block.withClusterArn(clusterArn)
    + block.withName(name)
  ),
  withClusterArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_arn" expected to be of type "string"';
    {
      cluster_arn: converted,
    }
  ),
  withControlPanelArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_panel_arn" expected to be of type "string"';
    {
      control_panel_arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
