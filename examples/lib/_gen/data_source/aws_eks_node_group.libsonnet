{
  local block = self,
  new(terraformName, clusterName, nodeGroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_node_group",
          type:: "data",
          attributes:: ["ami_type", "arn", "capacity_type", "cluster_name", "disk_size", "id", "instance_types", "labels", "launch_template", "node_group_name", "node_role_arn", "region", "release_version", "remote_access", "resources", "scaling_config", "status", "subnet_ids", "tags", "taints", "version"],
        },
      },
    }
    + block.withClusterName(clusterName)
    + block.withNodeGroupName(nodeGroupName)
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNodeGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_group_name" expected to be of type "string"';
    {
      node_group_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
