{
  local block = self,
  new(terraformName, listenerArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_globalaccelerator_custom_routing_endpoint_group",
          type:: "resource",
          attributes:: ["arn", "endpoint_group_region", "id", "listener_arn"],
        },
      },
    }
    + block.withListenerArn(listenerArn)
  ),
  withEndpointGroupRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_group_region" expected to be of type "string"';
    {
      endpoint_group_region: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withListenerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_arn" expected to be of type "string"';
    {
      listener_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  destination_configuration:: {
    local block = self,
    new(fromPort, protocols, toPort):: (
      {}
      + block.withFromPort(fromPort)
      + block.withProtocols(protocols)
      + block.withToPort(toPort)
    ),
    withFromPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    withProtocols(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
      {
        protocols: converted,
      }
    ),
    withProtocolsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
      {
        protocols+: converted,
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
  endpoint_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withEndpointId(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
      {
        endpoint_id: converted,
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
  withDestinationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration: value,
    }
  ),
  withEndpointConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDestinationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration+: converted,
    }
  ),
  withEndpointConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration+: converted,
    }
  ),
}
