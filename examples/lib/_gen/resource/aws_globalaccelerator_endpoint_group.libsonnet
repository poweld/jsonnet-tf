{
  local block = self,
  new(terraformName, listenerArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_globalaccelerator_endpoint_group",
          type:: "resource",
          attributes:: ["arn", "endpoint_group_region", "health_check_interval_seconds", "health_check_path", "health_check_port", "health_check_protocol", "id", "listener_arn", "threshold_count", "traffic_dial_percentage"],
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
  withHealthCheckIntervalSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"health_check_interval_seconds" expected to be of type "number"';
    {
      health_check_interval_seconds: converted,
    }
  ),
  withHealthCheckPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_path" expected to be of type "string"';
    {
      health_check_path: converted,
    }
  ),
  withHealthCheckPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"health_check_port" expected to be of type "number"';
    {
      health_check_port: converted,
    }
  ),
  withHealthCheckProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_protocol" expected to be of type "string"';
    {
      health_check_protocol: converted,
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
  withThresholdCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"threshold_count" expected to be of type "number"';
    {
      threshold_count: converted,
    }
  ),
  withTrafficDialPercentage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"traffic_dial_percentage" expected to be of type "number"';
    {
      traffic_dial_percentage: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  endpoint_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAttachmentArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"attachment_arn" expected to be of type "string"';
      {
        attachment_arn: converted,
      }
    ),
    withClientIpPreservationEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"client_ip_preservation_enabled" expected to be of type "bool"';
      {
        client_ip_preservation_enabled: converted,
      }
    ),
    withEndpointId(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
      {
        endpoint_id: converted,
      }
    ),
    withWeight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  port_override:: {
    local block = self,
    new(endpointPort, listenerPort):: (
      {}
      + block.withEndpointPort(endpointPort)
      + block.withListenerPort(listenerPort)
    ),
    withEndpointPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"endpoint_port" expected to be of type "number"';
      {
        endpoint_port: converted,
      }
    ),
    withListenerPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"listener_port" expected to be of type "number"';
      {
        listener_port: converted,
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
  withEndpointConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration: value,
    }
  ),
  withPortOverride(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_override: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withEndpointConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration+: converted,
    }
  ),
  withPortOverrideMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_override+: converted,
    }
  ),
}
