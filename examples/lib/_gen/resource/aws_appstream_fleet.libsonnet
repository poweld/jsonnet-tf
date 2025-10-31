{
  local block = self,
  new(terraformName, instanceType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appstream_fleet",
          type:: "resource",
          attributes:: ["arn", "created_time", "description", "disconnect_timeout_in_seconds", "display_name", "enable_default_internet_access", "fleet_type", "iam_role_arn", "id", "idle_disconnect_timeout_in_seconds", "image_arn", "image_name", "instance_type", "max_sessions_per_instance", "max_user_duration_in_seconds", "name", "region", "state", "stream_view", "tags", "tags_all"],
        },
      },
    }
    + block.withInstanceType(instanceType)
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDisconnectTimeoutInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"disconnect_timeout_in_seconds" expected to be of type "number"';
    {
      disconnect_timeout_in_seconds: converted,
    }
  ),
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  withEnableDefaultInternetAccess(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_default_internet_access" expected to be of type "bool"';
    {
      enable_default_internet_access: converted,
    }
  ),
  withFleetType(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_type" expected to be of type "string"';
    {
      fleet_type: converted,
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
  withIdleDisconnectTimeoutInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_disconnect_timeout_in_seconds" expected to be of type "number"';
    {
      idle_disconnect_timeout_in_seconds: converted,
    }
  ),
  withImageArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_arn" expected to be of type "string"';
    {
      image_arn: converted,
    }
  ),
  withImageName(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_name" expected to be of type "string"';
    {
      image_name: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  withMaxSessionsPerInstance(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_sessions_per_instance" expected to be of type "number"';
    {
      max_sessions_per_instance: converted,
    }
  ),
  withMaxUserDurationInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_user_duration_in_seconds" expected to be of type "number"';
    {
      max_user_duration_in_seconds: converted,
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
  withStreamView(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_view" expected to be of type "string"';
    {
      stream_view: converted,
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
  compute_capacity:: {
    local block = self,
    new():: (
      {}
    ),
    withDesiredInstances(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_instances" expected to be of type "number"';
      {
        desired_instances: converted,
      }
    ),
    withDesiredSessions(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_sessions" expected to be of type "number"';
      {
        desired_sessions: converted,
      }
    ),
  },
  domain_join_info:: {
    local block = self,
    new():: (
      {}
    ),
    withDirectoryName(value):: (
      local converted = value;
      assert std.isString(converted) : '"directory_name" expected to be of type "string"';
      {
        directory_name: converted,
      }
    ),
    withOrganizationalUnitDistinguishedName(value):: (
      local converted = value;
      assert std.isString(converted) : '"organizational_unit_distinguished_name" expected to be of type "string"';
      {
        organizational_unit_distinguished_name: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new():: (
      {}
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
      {
        security_group_ids+: converted,
      }
    ),
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  withComputeCapacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_capacity: value,
    }
  ),
  withDomainJoinInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_join_info: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withComputeCapacityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_capacity+: converted,
    }
  ),
  withDomainJoinInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_join_info+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
