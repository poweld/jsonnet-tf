{
  local block = self,
  new(terraformName, addonName, clusterName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_addon",
          type:: "resource",
          attributes:: ["addon_name", "addon_version", "arn", "cluster_name", "configuration_values", "created_at", "id", "modified_at", "preserve", "region", "resolve_conflicts_on_create", "resolve_conflicts_on_update", "service_account_role_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withAddonName(addonName)
    + block.withClusterName(clusterName)
  ),
  withAddonName(value):: (
    local converted = value;
    assert std.isString(converted) : '"addon_name" expected to be of type "string"';
    {
      addon_name: converted,
    }
  ),
  withAddonVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"addon_version" expected to be of type "string"';
    {
      addon_version: converted,
    }
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  withConfigurationValues(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_values" expected to be of type "string"';
    {
      configuration_values: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPreserve(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"preserve" expected to be of type "bool"';
    {
      preserve: converted,
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
  withResolveConflictsOnCreate(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolve_conflicts_on_create" expected to be of type "string"';
    {
      resolve_conflicts_on_create: converted,
    }
  ),
  withResolveConflictsOnUpdate(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolve_conflicts_on_update" expected to be of type "string"';
    {
      resolve_conflicts_on_update: converted,
    }
  ),
  withServiceAccountRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_account_role_arn" expected to be of type "string"';
    {
      service_account_role_arn: converted,
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
  pod_identity_association:: {
    local block = self,
    new(roleArn, serviceAccount):: (
      {}
      + block.withRoleArn(roleArn)
      + block.withServiceAccount(serviceAccount)
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withPodIdentityAssociation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pod_identity_association: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withPodIdentityAssociationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pod_identity_association+: converted,
    }
  ),
}
