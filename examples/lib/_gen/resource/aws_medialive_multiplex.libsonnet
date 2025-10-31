{
  local block = self,
  new(terraformName, availabilityZones, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_medialive_multiplex",
          type:: "resource",
          attributes:: ["arn", "availability_zones", "id", "name", "region", "start_multiplex", "tags", "tags_all"],
        },
      },
    }
    + block.withAvailabilityZones(availabilityZones)
    + block.withName(name)
  ),
  withAvailabilityZones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones: converted,
    }
  ),
  withAvailabilityZonesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones+: converted,
    }
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withStartMultiplex(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_multiplex" expected to be of type "bool"';
    {
      start_multiplex: converted,
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
  multiplex_settings:: {
    local block = self,
    new(transportStreamBitrate, transportStreamId):: (
      {}
      + block.withTransportStreamBitrate(transportStreamBitrate)
      + block.withTransportStreamId(transportStreamId)
    ),
    withMaximumVideoBufferDelayMilliseconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_video_buffer_delay_milliseconds" expected to be of type "number"';
      {
        maximum_video_buffer_delay_milliseconds: converted,
      }
    ),
    withTransportStreamBitrate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"transport_stream_bitrate" expected to be of type "number"';
      {
        transport_stream_bitrate: converted,
      }
    ),
    withTransportStreamId(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"transport_stream_id" expected to be of type "number"';
      {
        transport_stream_id: converted,
      }
    ),
    withTransportStreamReservedBitrate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"transport_stream_reserved_bitrate" expected to be of type "number"';
      {
        transport_stream_reserved_bitrate: converted,
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
  withMultiplexSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiplex_settings: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withMultiplexSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiplex_settings+: converted,
    }
  ),
}
