{
  local block = self,
  new(terraformName, clusterName, iamRoleArn, nodeType, replicationFactor):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dax_cluster",
          type:: "resource",
          attributes:: ["arn", "availability_zones", "cluster_address", "cluster_endpoint_encryption_type", "cluster_name", "configuration_endpoint", "description", "iam_role_arn", "id", "maintenance_window", "node_type", "nodes", "notification_topic_arn", "parameter_group_name", "port", "region", "replication_factor", "security_group_ids", "subnet_group_name", "tags", "tags_all"],
        },
      },
    }
    + block.withClusterName(clusterName)
    + block.withIamRoleArn(iamRoleArn)
    + block.withNodeType(nodeType)
    + block.withReplicationFactor(replicationFactor)
  ),
  withAvailabilityZones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  withAvailabilityZonesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  withClusterEndpointEncryptionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_endpoint_encryption_type" expected to be of type "string"';
    {
      cluster_endpoint_encryption_type: converted,
    }
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_window" expected to be of type "string"';
    {
      maintenance_window: converted,
    }
  ),
  withNodeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  withNotificationTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_topic_arn" expected to be of type "string"';
    {
      notification_topic_arn: converted,
    }
  ),
  withParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"parameter_group_name" expected to be of type "string"';
    {
      parameter_group_name: converted,
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
  withReplicationFactor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"replication_factor" expected to be of type "number"';
    {
      replication_factor: converted,
    }
  ),
  withSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  withSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  withSubnetGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_group_name" expected to be of type "string"';
    {
      subnet_group_name: converted,
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
  server_side_encryption:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
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
  withServerSideEncryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withServerSideEncryptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption+: converted,
    }
  ),
}
