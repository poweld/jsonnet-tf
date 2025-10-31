{
  local block = self,
  new(terraformName, instanceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_instance_public_ports",
          type:: "resource",
          attributes:: ["id", "instance_name", "region"],
        },
      },
    }
    + block.withInstanceName(instanceName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_name" expected to be of type "string"';
    {
      instance_name: converted,
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
  port_info:: {
    local block = self,
    new(fromPort, protocol, toPort):: (
      {}
      + block.withFromPort(fromPort)
      + block.withProtocol(protocol)
      + block.withToPort(toPort)
    ),
    withCidrListAliases(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_list_aliases" expected to be of type "set"';
      {
        cidr_list_aliases: converted,
      }
    ),
    withCidrListAliasesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_list_aliases" expected to be of type "set"';
      {
        cidr_list_aliases+: converted,
      }
    ),
    withCidrs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
      {
        cidrs: converted,
      }
    ),
    withCidrsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
      {
        cidrs+: converted,
      }
    ),
    withFromPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    withIpv6Cidrs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_cidrs" expected to be of type "set"';
      {
        ipv6_cidrs: converted,
      }
    ),
    withIpv6CidrsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_cidrs" expected to be of type "set"';
      {
        ipv6_cidrs+: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    withToPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
      {
        to_port: converted,
      }
    ),
  },
  withPortInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_info: value,
    }
  ),
  withPortInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_info+: converted,
    }
  ),
}
