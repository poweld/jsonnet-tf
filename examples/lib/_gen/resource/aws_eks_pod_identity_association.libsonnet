{
  local block = self,
  new(terraformName, clusterName, namespace, roleArn, serviceAccount):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_pod_identity_association",
          type:: "resource",
          attributes:: ["association_arn", "association_id", "cluster_name", "disable_session_tags", "external_id", "id", "namespace", "region", "role_arn", "service_account", "tags", "tags_all", "target_role_arn"],
        },
      },
    }
    + block.withClusterName(clusterName)
    + block.withNamespace(namespace)
    + block.withRoleArn(roleArn)
    + block.withServiceAccount(serviceAccount)
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  withDisableSessionTags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_session_tags" expected to be of type "bool"';
    {
      disable_session_tags: converted,
    }
  ),
  withNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withServiceAccount(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_account" expected to be of type "string"';
    {
      service_account: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTargetRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_role_arn" expected to be of type "string"';
    {
      target_role_arn: converted,
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
