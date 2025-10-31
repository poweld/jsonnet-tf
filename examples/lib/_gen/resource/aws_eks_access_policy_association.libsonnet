{
  local block = self,
  new(terraformName, clusterName, policyArn, principalArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_access_policy_association",
          type:: "resource",
          attributes:: ["associated_at", "cluster_name", "id", "modified_at", "policy_arn", "principal_arn", "region"],
        },
      },
    }
    + block.withClusterName(clusterName)
    + block.withPolicyArn(policyArn)
    + block.withPrincipalArn(principalArn)
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
  withPolicyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_arn" expected to be of type "string"';
    {
      policy_arn: converted,
    }
  ),
  withPrincipalArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_arn" expected to be of type "string"';
    {
      principal_arn: converted,
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
  access_scope:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withNamespaces(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"namespaces" expected to be of type "set"';
      {
        namespaces: converted,
      }
    ),
    withNamespacesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"namespaces" expected to be of type "set"';
      {
        namespaces+: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  withAccessScope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_scope: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAccessScopeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_scope+: converted,
    }
  ),
}
