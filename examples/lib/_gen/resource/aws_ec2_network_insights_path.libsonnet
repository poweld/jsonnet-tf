{
  local block = self,
  new(terraformName, protocol, source):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_network_insights_path",
          type:: "resource",
          attributes:: ["arn", "destination", "destination_arn", "destination_ip", "destination_port", "id", "protocol", "region", "source", "source_arn", "source_ip", "tags", "tags_all"],
        },
      },
    }
    + block.withProtocol(protocol)
    + block.withSource(source)
  ),
  withDestination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  withDestinationIp(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_ip" expected to be of type "string"';
    {
      destination_ip: converted,
    }
  ),
  withDestinationPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"destination_port" expected to be of type "number"';
    {
      destination_port: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  withSource(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
    }
  ),
  withSourceIp(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_ip" expected to be of type "string"';
    {
      source_ip: converted,
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
  filter_at_destination:: {
    local block = self,
    new():: (
      {}
    ),
    withDestinationAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_address" expected to be of type "string"';
      {
        destination_address: converted,
      }
    ),
    withSourceAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_address" expected to be of type "string"';
      {
        source_address: converted,
      }
    ),
    destination_port_range:: {
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
    source_port_range:: {
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
    withDestinationPortRange(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_port_range: value,
      }
    ),
    withSourcePortRange(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_port_range: value,
      }
    ),
    withDestinationPortRangeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_port_range+: converted,
      }
    ),
    withSourcePortRangeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_port_range+: converted,
      }
    ),
  },
  filter_at_source:: {
    local block = self,
    new():: (
      {}
    ),
    withDestinationAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_address" expected to be of type "string"';
      {
        destination_address: converted,
      }
    ),
    withSourceAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_address" expected to be of type "string"';
      {
        source_address: converted,
      }
    ),
    destination_port_range:: {
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
    source_port_range:: {
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
    withDestinationPortRange(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_port_range: value,
      }
    ),
    withSourcePortRange(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_port_range: value,
      }
    ),
    withDestinationPortRangeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_port_range+: converted,
      }
    ),
    withSourcePortRangeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_port_range+: converted,
      }
    ),
  },
  withFilterAtDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_at_destination: value,
    }
  ),
  withFilterAtSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_at_source: value,
    }
  ),
  withFilterAtDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_at_destination+: converted,
    }
  ),
  withFilterAtSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_at_source+: converted,
    }
  ),
}
