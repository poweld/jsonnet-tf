{
  local block = self,
  new(terraformName, multiplexId, programName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_medialive_multiplex_program",
          type:: "resource",
          attributes:: ["id", "multiplex_id", "program_name", "region"],
        },
      },
    }
    + block.withMultiplexId(multiplexId)
    + block.withProgramName(programName)
  ),
  withMultiplexId(value):: (
    local converted = value;
    assert std.isString(converted) : '"multiplex_id" expected to be of type "string"';
    {
      multiplex_id: converted,
    }
  ),
  withProgramName(value):: (
    local converted = value;
    assert std.isString(converted) : '"program_name" expected to be of type "string"';
    {
      program_name: converted,
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
  multiplex_program_settings:: {
    local block = self,
    new(preferredChannelPipeline, programNumber):: (
      {}
      + block.withPreferredChannelPipeline(preferredChannelPipeline)
      + block.withProgramNumber(programNumber)
    ),
    withPreferredChannelPipeline(value):: (
      local converted = value;
      assert std.isString(converted) : '"preferred_channel_pipeline" expected to be of type "string"';
      {
        preferred_channel_pipeline: converted,
      }
    ),
    withProgramNumber(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"program_number" expected to be of type "number"';
      {
        program_number: converted,
      }
    ),
    service_descriptor:: {
      local block = self,
      new(providerName, serviceName):: (
        {}
        + block.withProviderName(providerName)
        + block.withServiceName(serviceName)
      ),
      withProviderName(value):: (
        local converted = value;
        assert std.isString(converted) : '"provider_name" expected to be of type "string"';
        {
          provider_name: converted,
        }
      ),
      withServiceName(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_name" expected to be of type "string"';
        {
          service_name: converted,
        }
      ),
    },
    video_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withConstantBitrate(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"constant_bitrate" expected to be of type "number"';
        {
          constant_bitrate: converted,
        }
      ),
      statmux_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withMaximumBitrate(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"maximum_bitrate" expected to be of type "number"';
          {
            maximum_bitrate: converted,
          }
        ),
        withMinimumBitrate(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"minimum_bitrate" expected to be of type "number"';
          {
            minimum_bitrate: converted,
          }
        ),
        withPriority(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"priority" expected to be of type "number"';
          {
            priority: converted,
          }
        ),
      },
      withStatmuxSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          statmux_settings: value,
        }
      ),
      withStatmuxSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          statmux_settings+: converted,
        }
      ),
    },
    withServiceDescriptor(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_descriptor: value,
      }
    ),
    withVideoSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        video_settings: value,
      }
    ),
    withServiceDescriptorMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_descriptor+: converted,
      }
    ),
    withVideoSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        video_settings+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  withMultiplexProgramSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiplex_program_settings: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withMultiplexProgramSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiplex_program_settings+: converted,
    }
  ),
}
