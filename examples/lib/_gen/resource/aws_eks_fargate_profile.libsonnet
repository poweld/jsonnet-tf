{
  local block = self,
  new(terraformName, clusterName, fargateProfileName, podExecutionRoleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_fargate_profile",
          type:: "resource",
          attributes:: ["arn", "cluster_name", "fargate_profile_name", "id", "pod_execution_role_arn", "region", "status", "subnet_ids", "tags", "tags_all"],
        },
      },
    }
    + block.withClusterName(clusterName)
    + block.withFargateProfileName(fargateProfileName)
    + block.withPodExecutionRoleArn(podExecutionRoleArn)
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  withFargateProfileName(value):: (
    local converted = value;
    assert std.isString(converted) : '"fargate_profile_name" expected to be of type "string"';
    {
      fargate_profile_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPodExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"pod_execution_role_arn" expected to be of type "string"';
    {
      pod_execution_role_arn: converted,
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
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  selector:: {
    local block = self,
    new(namespace):: (
      {}
      + block.withNamespace(namespace)
    ),
    withLabels(value):: (
      local converted = value;
      assert std.isObject(converted) : '"labels" expected to be of type "map"';
      {
        labels: converted,
      }
    ),
    withNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withSelector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      selector: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withSelectorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      selector+: converted,
    }
  ),
}
