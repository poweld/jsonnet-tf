{
  local block = self,
  new(terraformName, name, providerEndpoint, providerType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codestarconnections_host",
          type:: "resource",
          attributes:: ["arn", "id", "name", "provider_endpoint", "provider_type", "region", "status"],
        },
      },
    }
    + block.withName(name)
    + block.withProviderEndpoint(providerEndpoint)
    + block.withProviderType(providerType)
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
  withProviderEndpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_endpoint" expected to be of type "string"';
    {
      provider_endpoint: converted,
    }
  ),
  withProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_type" expected to be of type "string"';
    {
      provider_type: converted,
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
  vpc_configuration:: {
    local block = self,
    new(securityGroupIds, subnetIds, vpcId):: (
      {}
      + block.withSecurityGroupIds(securityGroupIds)
      + block.withSubnetIds(subnetIds)
      + block.withVpcId(vpcId)
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
    withTlsCertificate(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_certificate" expected to be of type "string"';
      {
        tls_certificate: converted,
      }
    ),
    withVpcId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpcConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration: value,
    }
  ),
  withVpcConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration+: converted,
    }
  ),
}
