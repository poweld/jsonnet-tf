{
  local block = self,
  new(terraformName, acceleratorArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_globalaccelerator_custom_routing_listener",
          type:: "resource",
          attributes:: ["accelerator_arn", "arn", "id"],
        },
      },
    }
    + block.withAcceleratorArn(acceleratorArn)
  ),
  withAcceleratorArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"accelerator_arn" expected to be of type "string"';
    {
      accelerator_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  port_range:: {
    local block = self,
    new():: (
      {}
    ),
    withFromPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
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
  withPortRange(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_range: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withPortRangeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_range+: converted,
    }
  ),
}
