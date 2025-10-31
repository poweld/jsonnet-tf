{
  local block = self,
  new(terraformName, container):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elastictranscoder_preset",
          type:: "resource",
          attributes:: ["arn", "container", "description", "id", "name", "region", "type", "video_codec_options"],
        },
      },
    }
    + block.withContainer(container)
  ),
  withContainer(value):: (
    local converted = value;
    assert std.isString(converted) : '"container" expected to be of type "string"';
    {
      container: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withVideoCodecOptions(value):: (
    local converted = value;
    assert std.isObject(converted) : '"video_codec_options" expected to be of type "map"';
    {
      video_codec_options: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  audio:: {
    local block = self,
    new():: (
      {}
    ),
    withAudioPackingMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"audio_packing_mode" expected to be of type "string"';
      {
        audio_packing_mode: converted,
      }
    ),
    withBitRate(value):: (
      local converted = value;
      assert std.isString(converted) : '"bit_rate" expected to be of type "string"';
      {
        bit_rate: converted,
      }
    ),
    withChannels(value):: (
      local converted = value;
      assert std.isString(converted) : '"channels" expected to be of type "string"';
      {
        channels: converted,
      }
    ),
    withCodec(value):: (
      local converted = value;
      assert std.isString(converted) : '"codec" expected to be of type "string"';
      {
        codec: converted,
      }
    ),
    withSampleRate(value):: (
      local converted = value;
      assert std.isString(converted) : '"sample_rate" expected to be of type "string"';
      {
        sample_rate: converted,
      }
    ),
  },
  audio_codec_options:: {
    local block = self,
    new():: (
      {}
    ),
    withBitDepth(value):: (
      local converted = value;
      assert std.isString(converted) : '"bit_depth" expected to be of type "string"';
      {
        bit_depth: converted,
      }
    ),
    withBitOrder(value):: (
      local converted = value;
      assert std.isString(converted) : '"bit_order" expected to be of type "string"';
      {
        bit_order: converted,
      }
    ),
    withProfile(value):: (
      local converted = value;
      assert std.isString(converted) : '"profile" expected to be of type "string"';
      {
        profile: converted,
      }
    ),
    withSigned(value):: (
      local converted = value;
      assert std.isString(converted) : '"signed" expected to be of type "string"';
      {
        signed: converted,
      }
    ),
  },
  thumbnails:: {
    local block = self,
    new():: (
      {}
    ),
    withAspectRatio(value):: (
      local converted = value;
      assert std.isString(converted) : '"aspect_ratio" expected to be of type "string"';
      {
        aspect_ratio: converted,
      }
    ),
    withFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"format" expected to be of type "string"';
      {
        format: converted,
      }
    ),
    withInterval(value):: (
      local converted = value;
      assert std.isString(converted) : '"interval" expected to be of type "string"';
      {
        interval: converted,
      }
    ),
    withMaxHeight(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_height" expected to be of type "string"';
      {
        max_height: converted,
      }
    ),
    withMaxWidth(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_width" expected to be of type "string"';
      {
        max_width: converted,
      }
    ),
    withPaddingPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"padding_policy" expected to be of type "string"';
      {
        padding_policy: converted,
      }
    ),
    withResolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolution" expected to be of type "string"';
      {
        resolution: converted,
      }
    ),
    withSizingPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"sizing_policy" expected to be of type "string"';
      {
        sizing_policy: converted,
      }
    ),
  },
  video:: {
    local block = self,
    new():: (
      {}
    ),
    withAspectRatio(value):: (
      local converted = value;
      assert std.isString(converted) : '"aspect_ratio" expected to be of type "string"';
      {
        aspect_ratio: converted,
      }
    ),
    withBitRate(value):: (
      local converted = value;
      assert std.isString(converted) : '"bit_rate" expected to be of type "string"';
      {
        bit_rate: converted,
      }
    ),
    withCodec(value):: (
      local converted = value;
      assert std.isString(converted) : '"codec" expected to be of type "string"';
      {
        codec: converted,
      }
    ),
    withDisplayAspectRatio(value):: (
      local converted = value;
      assert std.isString(converted) : '"display_aspect_ratio" expected to be of type "string"';
      {
        display_aspect_ratio: converted,
      }
    ),
    withFixedGop(value):: (
      local converted = value;
      assert std.isString(converted) : '"fixed_gop" expected to be of type "string"';
      {
        fixed_gop: converted,
      }
    ),
    withFrameRate(value):: (
      local converted = value;
      assert std.isString(converted) : '"frame_rate" expected to be of type "string"';
      {
        frame_rate: converted,
      }
    ),
    withKeyframesMaxDist(value):: (
      local converted = value;
      assert std.isString(converted) : '"keyframes_max_dist" expected to be of type "string"';
      {
        keyframes_max_dist: converted,
      }
    ),
    withMaxFrameRate(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_frame_rate" expected to be of type "string"';
      {
        max_frame_rate: converted,
      }
    ),
    withMaxHeight(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_height" expected to be of type "string"';
      {
        max_height: converted,
      }
    ),
    withMaxWidth(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_width" expected to be of type "string"';
      {
        max_width: converted,
      }
    ),
    withPaddingPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"padding_policy" expected to be of type "string"';
      {
        padding_policy: converted,
      }
    ),
    withResolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolution" expected to be of type "string"';
      {
        resolution: converted,
      }
    ),
    withSizingPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"sizing_policy" expected to be of type "string"';
      {
        sizing_policy: converted,
      }
    ),
  },
  video_watermarks:: {
    local block = self,
    new():: (
      {}
    ),
    withHorizontalAlign(value):: (
      local converted = value;
      assert std.isString(converted) : '"horizontal_align" expected to be of type "string"';
      {
        horizontal_align: converted,
      }
    ),
    withHorizontalOffset(value):: (
      local converted = value;
      assert std.isString(converted) : '"horizontal_offset" expected to be of type "string"';
      {
        horizontal_offset: converted,
      }
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withMaxHeight(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_height" expected to be of type "string"';
      {
        max_height: converted,
      }
    ),
    withMaxWidth(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_width" expected to be of type "string"';
      {
        max_width: converted,
      }
    ),
    withOpacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"opacity" expected to be of type "string"';
      {
        opacity: converted,
      }
    ),
    withSizingPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"sizing_policy" expected to be of type "string"';
      {
        sizing_policy: converted,
      }
    ),
    withTarget(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
      }
    ),
    withVerticalAlign(value):: (
      local converted = value;
      assert std.isString(converted) : '"vertical_align" expected to be of type "string"';
      {
        vertical_align: converted,
      }
    ),
    withVerticalOffset(value):: (
      local converted = value;
      assert std.isString(converted) : '"vertical_offset" expected to be of type "string"';
      {
        vertical_offset: converted,
      }
    ),
  },
  withAudio(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audio: value,
    }
  ),
  withAudioCodecOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audio_codec_options: value,
    }
  ),
  withThumbnails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnails: value,
    }
  ),
  withVideo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      video: value,
    }
  ),
  withVideoWatermarks(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      video_watermarks: value,
    }
  ),
  withAudioMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audio+: converted,
    }
  ),
  withAudioCodecOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      audio_codec_options+: converted,
    }
  ),
  withThumbnailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      thumbnails+: converted,
    }
  ),
  withVideoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      video+: converted,
    }
  ),
  withVideoWatermarksMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      video_watermarks+: converted,
    }
  ),
}
