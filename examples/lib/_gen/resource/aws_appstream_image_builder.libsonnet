{
  local block = self,
  new(terraformName, instanceType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appstream_image_builder",
          type:: "resource",
          attributes:: ["appstream_agent_version", "arn", "created_time", "description", "display_name", "enable_default_internet_access", "iam_role_arn", "id", "image_arn", "image_name", "instance_type", "name", "region", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withInstanceType(instanceType)
    + block.withName(name)
  ),
  withAppstreamAgentVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"appstream_agent_version" expected to be of type "string"';
    {
      appstream_agent_version: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  access_endpoint:: {
    local block = self,
    new(endpointType):: (
      {}
      + block.withEndpointType(endpointType)
    ),
    withEndpointType(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
      {
        endpoint_type: converted,
      }
    ),
    withVpceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpce_id" expected to be of type "string"';
      {
        vpce_id: converted,
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
  },
  withAccessEndpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_endpoint: value,
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
  withAccessEndpointMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_endpoint+: converted,
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
