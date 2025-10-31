{
  local block = self,
  new(terraformName, channelClass, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_medialive_channel",
          type:: "resource",
          attributes:: ["arn", "channel_class", "channel_id", "id", "log_level", "name", "region", "role_arn", "start_channel", "tags", "tags_all"],
        },
      },
    }
    + block.withChannelClass(channelClass)
    + block.withName(name)
  ),
  withChannelClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"channel_class" expected to be of type "string"';
    {
      channel_class: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLogLevel(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_level" expected to be of type "string"';
    {
      log_level: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withStartChannel(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_channel" expected to be of type "bool"';
    {
      start_channel: converted,
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
  cdi_input_specification:: {
    local block = self,
    new(resolution):: (
      {}
      + block.withResolution(resolution)
    ),
    withResolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolution" expected to be of type "string"';
      {
        resolution: converted,
      }
    ),
  },
  destinations:: {
    local block = self,
    new(id):: (
      {}
      + block.withId(id)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    media_package_settings:: {
      local block = self,
      new(channelId):: (
        {}
        + block.withChannelId(channelId)
      ),
      withChannelId(value):: (
        local converted = value;
        assert std.isString(converted) : '"channel_id" expected to be of type "string"';
        {
          channel_id: converted,
        }
      ),
    },
    multiplex_settings:: {
      local block = self,
      new(multiplexId, programName):: (
        {}
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
    },
    settings:: {
      local block = self,
      new():: (
        {}
      ),
      withPasswordParam(value):: (
        local converted = value;
        assert std.isString(converted) : '"password_param" expected to be of type "string"';
        {
          password_param: converted,
        }
      ),
      withStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_name" expected to be of type "string"';
        {
          stream_name: converted,
        }
      ),
      withUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"url" expected to be of type "string"';
        {
          url: converted,
        }
      ),
      withUsername(value):: (
        local converted = value;
        assert std.isString(converted) : '"username" expected to be of type "string"';
        {
          username: converted,
        }
      ),
    },
    withMediaPackageSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        media_package_settings: value,
      }
    ),
    withMultiplexSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multiplex_settings: value,
      }
    ),
    withSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        settings: value,
      }
    ),
    withMediaPackageSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        media_package_settings+: converted,
      }
    ),
    withMultiplexSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multiplex_settings+: converted,
      }
    ),
    withSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        settings+: converted,
      }
    ),
  },
  encoder_settings:: {
    local block = self,
    new():: (
      {}
    ),
    audio_descriptions:: {
      local block = self,
      new(audioSelectorName, name):: (
        {}
        + block.withAudioSelectorName(audioSelectorName)
        + block.withName(name)
      ),
      withAudioSelectorName(value):: (
        local converted = value;
        assert std.isString(converted) : '"audio_selector_name" expected to be of type "string"';
        {
          audio_selector_name: converted,
        }
      ),
      withAudioType(value):: (
        local converted = value;
        assert std.isString(converted) : '"audio_type" expected to be of type "string"';
        {
          audio_type: converted,
        }
      ),
      withAudioTypeControl(value):: (
        local converted = value;
        assert std.isString(converted) : '"audio_type_control" expected to be of type "string"';
        {
          audio_type_control: converted,
        }
      ),
      withLanguageCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code" expected to be of type "string"';
        {
          language_code: converted,
        }
      ),
      withLanguageCodeControl(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code_control" expected to be of type "string"';
        {
          language_code_control: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_name" expected to be of type "string"';
        {
          stream_name: converted,
        }
      ),
      audio_normalization_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withAlgorithm(value):: (
          local converted = value;
          assert std.isString(converted) : '"algorithm" expected to be of type "string"';
          {
            algorithm: converted,
          }
        ),
        withAlgorithmControl(value):: (
          local converted = value;
          assert std.isString(converted) : '"algorithm_control" expected to be of type "string"';
          {
            algorithm_control: converted,
          }
        ),
        withTargetLkfs(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"target_lkfs" expected to be of type "number"';
          {
            target_lkfs: converted,
          }
        ),
      },
      audio_watermark_settings:: {
        local block = self,
        new():: (
          {}
        ),
        nielsen_watermarks_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withNielsenDistributionType(value):: (
            local converted = value;
            assert std.isString(converted) : '"nielsen_distribution_type" expected to be of type "string"';
            {
              nielsen_distribution_type: converted,
            }
          ),
          nielsen_cbet_settings:: {
            local block = self,
            new(cbetCheckDigitString, cbetStepaside, csid):: (
              {}
              + block.withCbetCheckDigitString(cbetCheckDigitString)
              + block.withCbetStepaside(cbetStepaside)
              + block.withCsid(csid)
            ),
            withCbetCheckDigitString(value):: (
              local converted = value;
              assert std.isString(converted) : '"cbet_check_digit_string" expected to be of type "string"';
              {
                cbet_check_digit_string: converted,
              }
            ),
            withCbetStepaside(value):: (
              local converted = value;
              assert std.isString(converted) : '"cbet_stepaside" expected to be of type "string"';
              {
                cbet_stepaside: converted,
              }
            ),
            withCsid(value):: (
              local converted = value;
              assert std.isString(converted) : '"csid" expected to be of type "string"';
              {
                csid: converted,
              }
            ),
          },
          nielsen_naes_ii_nw_settings:: {
            local block = self,
            new(checkDigitString, sid):: (
              {}
              + block.withCheckDigitString(checkDigitString)
              + block.withSid(sid)
            ),
            withCheckDigitString(value):: (
              local converted = value;
              assert std.isString(converted) : '"check_digit_string" expected to be of type "string"';
              {
                check_digit_string: converted,
              }
            ),
            withSid(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"sid" expected to be of type "number"';
              {
                sid: converted,
              }
            ),
          },
          withNielsenCbetSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              nielsen_cbet_settings: value,
            }
          ),
          withNielsenNaesIiNwSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              nielsen_naes_ii_nw_settings: value,
            }
          ),
          withNielsenCbetSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              nielsen_cbet_settings+: converted,
            }
          ),
          withNielsenNaesIiNwSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              nielsen_naes_ii_nw_settings+: converted,
            }
          ),
        },
        withNielsenWatermarksSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            nielsen_watermarks_settings: value,
          }
        ),
        withNielsenWatermarksSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            nielsen_watermarks_settings+: converted,
          }
        ),
      },
      codec_settings:: {
        local block = self,
        new():: (
          {}
        ),
        aac_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withBitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          withCodingMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          withInputType(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_type" expected to be of type "string"';
            {
              input_type: converted,
            }
          ),
          withProfile(value):: (
            local converted = value;
            assert std.isString(converted) : '"profile" expected to be of type "string"';
            {
              profile: converted,
            }
          ),
          withRateControlMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"rate_control_mode" expected to be of type "string"';
            {
              rate_control_mode: converted,
            }
          ),
          withRawFormat(value):: (
            local converted = value;
            assert std.isString(converted) : '"raw_format" expected to be of type "string"';
            {
              raw_format: converted,
            }
          ),
          withSampleRate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"sample_rate" expected to be of type "number"';
            {
              sample_rate: converted,
            }
          ),
          withSpec(value):: (
            local converted = value;
            assert std.isString(converted) : '"spec" expected to be of type "string"';
            {
              spec: converted,
            }
          ),
          withVbrQuality(value):: (
            local converted = value;
            assert std.isString(converted) : '"vbr_quality" expected to be of type "string"';
            {
              vbr_quality: converted,
            }
          ),
        },
        ac3_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withBitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          withBitstreamMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"bitstream_mode" expected to be of type "string"';
            {
              bitstream_mode: converted,
            }
          ),
          withCodingMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          withDialnorm(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"dialnorm" expected to be of type "number"';
            {
              dialnorm: converted,
            }
          ),
          withDrcProfile(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_profile" expected to be of type "string"';
            {
              drc_profile: converted,
            }
          ),
          withLfeFilter(value):: (
            local converted = value;
            assert std.isString(converted) : '"lfe_filter" expected to be of type "string"';
            {
              lfe_filter: converted,
            }
          ),
          withMetadataControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"metadata_control" expected to be of type "string"';
            {
              metadata_control: converted,
            }
          ),
        },
        eac3_atmos_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withBitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          withCodingMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          withDialnorm(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"dialnorm" expected to be of type "number"';
            {
              dialnorm: converted,
            }
          ),
          withDrcLine(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_line" expected to be of type "string"';
            {
              drc_line: converted,
            }
          ),
          withDrcRf(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_rf" expected to be of type "string"';
            {
              drc_rf: converted,
            }
          ),
          withHeightTrim(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"height_trim" expected to be of type "number"';
            {
              height_trim: converted,
            }
          ),
          withSurroundTrim(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"surround_trim" expected to be of type "number"';
            {
              surround_trim: converted,
            }
          ),
        },
        eac3_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withAttenuationControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"attenuation_control" expected to be of type "string"';
            {
              attenuation_control: converted,
            }
          ),
          withBitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          withBitstreamMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"bitstream_mode" expected to be of type "string"';
            {
              bitstream_mode: converted,
            }
          ),
          withCodingMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          withDcFilter(value):: (
            local converted = value;
            assert std.isString(converted) : '"dc_filter" expected to be of type "string"';
            {
              dc_filter: converted,
            }
          ),
          withDialnorm(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"dialnorm" expected to be of type "number"';
            {
              dialnorm: converted,
            }
          ),
          withDrcLine(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_line" expected to be of type "string"';
            {
              drc_line: converted,
            }
          ),
          withDrcRf(value):: (
            local converted = value;
            assert std.isString(converted) : '"drc_rf" expected to be of type "string"';
            {
              drc_rf: converted,
            }
          ),
          withLfeControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"lfe_control" expected to be of type "string"';
            {
              lfe_control: converted,
            }
          ),
          withLfeFilter(value):: (
            local converted = value;
            assert std.isString(converted) : '"lfe_filter" expected to be of type "string"';
            {
              lfe_filter: converted,
            }
          ),
          withLoRoCenterMixLevel(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"lo_ro_center_mix_level" expected to be of type "number"';
            {
              lo_ro_center_mix_level: converted,
            }
          ),
          withLoRoSurroundMixLevel(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"lo_ro_surround_mix_level" expected to be of type "number"';
            {
              lo_ro_surround_mix_level: converted,
            }
          ),
          withLtRtCenterMixLevel(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"lt_rt_center_mix_level" expected to be of type "number"';
            {
              lt_rt_center_mix_level: converted,
            }
          ),
          withLtRtSurroundMixLevel(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"lt_rt_surround_mix_level" expected to be of type "number"';
            {
              lt_rt_surround_mix_level: converted,
            }
          ),
          withMetadataControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"metadata_control" expected to be of type "string"';
            {
              metadata_control: converted,
            }
          ),
          withPassthroughControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"passthrough_control" expected to be of type "string"';
            {
              passthrough_control: converted,
            }
          ),
          withPhaseControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"phase_control" expected to be of type "string"';
            {
              phase_control: converted,
            }
          ),
          withStereoDownmix(value):: (
            local converted = value;
            assert std.isString(converted) : '"stereo_downmix" expected to be of type "string"';
            {
              stereo_downmix: converted,
            }
          ),
          withSurroundExMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"surround_ex_mode" expected to be of type "string"';
            {
              surround_ex_mode: converted,
            }
          ),
          withSurroundMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"surround_mode" expected to be of type "string"';
            {
              surround_mode: converted,
            }
          ),
        },
        mp2_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withBitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          withCodingMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          withSampleRate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"sample_rate" expected to be of type "number"';
            {
              sample_rate: converted,
            }
          ),
        },
        pass_through_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        wav_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withBitDepth(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bit_depth" expected to be of type "number"';
            {
              bit_depth: converted,
            }
          ),
          withCodingMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"coding_mode" expected to be of type "string"';
            {
              coding_mode: converted,
            }
          ),
          withSampleRate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"sample_rate" expected to be of type "number"';
            {
              sample_rate: converted,
            }
          ),
        },
        withAacSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aac_settings: value,
          }
        ),
        withAc3Settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ac3_settings: value,
          }
        ),
        withEac3AtmosSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            eac3_atmos_settings: value,
          }
        ),
        withEac3Settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            eac3_settings: value,
          }
        ),
        withMp2Settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            mp2_settings: value,
          }
        ),
        withPassThroughSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            pass_through_settings: value,
          }
        ),
        withWavSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            wav_settings: value,
          }
        ),
        withAacSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aac_settings+: converted,
          }
        ),
        withAc3SettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ac3_settings+: converted,
          }
        ),
        withEac3AtmosSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            eac3_atmos_settings+: converted,
          }
        ),
        withEac3SettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            eac3_settings+: converted,
          }
        ),
        withMp2SettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            mp2_settings+: converted,
          }
        ),
        withPassThroughSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            pass_through_settings+: converted,
          }
        ),
        withWavSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            wav_settings+: converted,
          }
        ),
      },
      remix_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withChannelsIn(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"channels_in" expected to be of type "number"';
          {
            channels_in: converted,
          }
        ),
        withChannelsOut(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"channels_out" expected to be of type "number"';
          {
            channels_out: converted,
          }
        ),
        channel_mappings:: {
          local block = self,
          new(outputChannel):: (
            {}
            + block.withOutputChannel(outputChannel)
          ),
          withOutputChannel(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"output_channel" expected to be of type "number"';
            {
              output_channel: converted,
            }
          ),
          input_channel_levels:: {
            local block = self,
            new(gain, inputChannel):: (
              {}
              + block.withGain(gain)
              + block.withInputChannel(inputChannel)
            ),
            withGain(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"gain" expected to be of type "number"';
              {
                gain: converted,
              }
            ),
            withInputChannel(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"input_channel" expected to be of type "number"';
              {
                input_channel: converted,
              }
            ),
          },
          withInputChannelLevels(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_channel_levels: value,
            }
          ),
          withInputChannelLevelsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_channel_levels+: converted,
            }
          ),
        },
        withChannelMappings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            channel_mappings: value,
          }
        ),
        withChannelMappingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            channel_mappings+: converted,
          }
        ),
      },
      withAudioNormalizationSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_normalization_settings: value,
        }
      ),
      withAudioWatermarkSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_watermark_settings: value,
        }
      ),
      withCodecSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          codec_settings: value,
        }
      ),
      withRemixSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          remix_settings: value,
        }
      ),
      withAudioNormalizationSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_normalization_settings+: converted,
        }
      ),
      withAudioWatermarkSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_watermark_settings+: converted,
        }
      ),
      withCodecSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          codec_settings+: converted,
        }
      ),
      withRemixSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          remix_settings+: converted,
        }
      ),
    },
    avail_blanking:: {
      local block = self,
      new():: (
        {}
      ),
      withState(value):: (
        local converted = value;
        assert std.isString(converted) : '"state" expected to be of type "string"';
        {
          state: converted,
        }
      ),
      avail_blanking_image:: {
        local block = self,
        new(uri):: (
          {}
          + block.withUri(uri)
        ),
        withPasswordParam(value):: (
          local converted = value;
          assert std.isString(converted) : '"password_param" expected to be of type "string"';
          {
            password_param: converted,
          }
        ),
        withUri(value):: (
          local converted = value;
          assert std.isString(converted) : '"uri" expected to be of type "string"';
          {
            uri: converted,
          }
        ),
        withUsername(value):: (
          local converted = value;
          assert std.isString(converted) : '"username" expected to be of type "string"';
          {
            username: converted,
          }
        ),
      },
      withAvailBlankingImage(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          avail_blanking_image: value,
        }
      ),
      withAvailBlankingImageMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          avail_blanking_image+: converted,
        }
      ),
    },
    caption_descriptions:: {
      local block = self,
      new(captionSelectorName, name):: (
        {}
        + block.withCaptionSelectorName(captionSelectorName)
        + block.withName(name)
      ),
      withAccessibility(value):: (
        local converted = value;
        assert std.isString(converted) : '"accessibility" expected to be of type "string"';
        {
          accessibility: converted,
        }
      ),
      withCaptionSelectorName(value):: (
        local converted = value;
        assert std.isString(converted) : '"caption_selector_name" expected to be of type "string"';
        {
          caption_selector_name: converted,
        }
      ),
      withLanguageCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code" expected to be of type "string"';
        {
          language_code: converted,
        }
      ),
      withLanguageDescription(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_description" expected to be of type "string"';
        {
          language_description: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      destination_settings:: {
        local block = self,
        new():: (
          {}
        ),
        arib_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        burn_in_destination_settings:: {
          local block = self,
          new(outlineColor, teletextGridControl):: (
            {}
            + block.withOutlineColor(outlineColor)
            + block.withTeletextGridControl(teletextGridControl)
          ),
          withAlignment(value):: (
            local converted = value;
            assert std.isString(converted) : '"alignment" expected to be of type "string"';
            {
              alignment: converted,
            }
          ),
          withBackgroundColor(value):: (
            local converted = value;
            assert std.isString(converted) : '"background_color" expected to be of type "string"';
            {
              background_color: converted,
            }
          ),
          withBackgroundOpacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"background_opacity" expected to be of type "number"';
            {
              background_opacity: converted,
            }
          ),
          withFontColor(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_color" expected to be of type "string"';
            {
              font_color: converted,
            }
          ),
          withFontOpacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"font_opacity" expected to be of type "number"';
            {
              font_opacity: converted,
            }
          ),
          withFontResolution(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"font_resolution" expected to be of type "number"';
            {
              font_resolution: converted,
            }
          ),
          withFontSize(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_size" expected to be of type "string"';
            {
              font_size: converted,
            }
          ),
          withOutlineColor(value):: (
            local converted = value;
            assert std.isString(converted) : '"outline_color" expected to be of type "string"';
            {
              outline_color: converted,
            }
          ),
          withOutlineSize(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"outline_size" expected to be of type "number"';
            {
              outline_size: converted,
            }
          ),
          withShadowColor(value):: (
            local converted = value;
            assert std.isString(converted) : '"shadow_color" expected to be of type "string"';
            {
              shadow_color: converted,
            }
          ),
          withShadowOpacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_opacity" expected to be of type "number"';
            {
              shadow_opacity: converted,
            }
          ),
          withShadowXOffset(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_x_offset" expected to be of type "number"';
            {
              shadow_x_offset: converted,
            }
          ),
          withShadowYOffset(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_y_offset" expected to be of type "number"';
            {
              shadow_y_offset: converted,
            }
          ),
          withTeletextGridControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"teletext_grid_control" expected to be of type "string"';
            {
              teletext_grid_control: converted,
            }
          ),
          withXPosition(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"x_position" expected to be of type "number"';
            {
              x_position: converted,
            }
          ),
          withYPosition(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"y_position" expected to be of type "number"';
            {
              y_position: converted,
            }
          ),
          font:: {
            local block = self,
            new(uri):: (
              {}
              + block.withUri(uri)
            ),
            withPasswordParam(value):: (
              local converted = value;
              assert std.isString(converted) : '"password_param" expected to be of type "string"';
              {
                password_param: converted,
              }
            ),
            withUri(value):: (
              local converted = value;
              assert std.isString(converted) : '"uri" expected to be of type "string"';
              {
                uri: converted,
              }
            ),
            withUsername(value):: (
              local converted = value;
              assert std.isString(converted) : '"username" expected to be of type "string"';
              {
                username: converted,
              }
            ),
          },
          withFont(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              font: value,
            }
          ),
          withFontMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              font+: converted,
            }
          ),
        },
        dvb_sub_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withAlignment(value):: (
            local converted = value;
            assert std.isString(converted) : '"alignment" expected to be of type "string"';
            {
              alignment: converted,
            }
          ),
          withBackgroundColor(value):: (
            local converted = value;
            assert std.isString(converted) : '"background_color" expected to be of type "string"';
            {
              background_color: converted,
            }
          ),
          withBackgroundOpacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"background_opacity" expected to be of type "number"';
            {
              background_opacity: converted,
            }
          ),
          withFontColor(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_color" expected to be of type "string"';
            {
              font_color: converted,
            }
          ),
          withFontOpacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"font_opacity" expected to be of type "number"';
            {
              font_opacity: converted,
            }
          ),
          withFontResolution(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"font_resolution" expected to be of type "number"';
            {
              font_resolution: converted,
            }
          ),
          withFontSize(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_size" expected to be of type "string"';
            {
              font_size: converted,
            }
          ),
          withOutlineColor(value):: (
            local converted = value;
            assert std.isString(converted) : '"outline_color" expected to be of type "string"';
            {
              outline_color: converted,
            }
          ),
          withOutlineSize(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"outline_size" expected to be of type "number"';
            {
              outline_size: converted,
            }
          ),
          withShadowColor(value):: (
            local converted = value;
            assert std.isString(converted) : '"shadow_color" expected to be of type "string"';
            {
              shadow_color: converted,
            }
          ),
          withShadowOpacity(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_opacity" expected to be of type "number"';
            {
              shadow_opacity: converted,
            }
          ),
          withShadowXOffset(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_x_offset" expected to be of type "number"';
            {
              shadow_x_offset: converted,
            }
          ),
          withShadowYOffset(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"shadow_y_offset" expected to be of type "number"';
            {
              shadow_y_offset: converted,
            }
          ),
          withTeletextGridControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"teletext_grid_control" expected to be of type "string"';
            {
              teletext_grid_control: converted,
            }
          ),
          withXPosition(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"x_position" expected to be of type "number"';
            {
              x_position: converted,
            }
          ),
          withYPosition(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"y_position" expected to be of type "number"';
            {
              y_position: converted,
            }
          ),
          font:: {
            local block = self,
            new(uri):: (
              {}
              + block.withUri(uri)
            ),
            withPasswordParam(value):: (
              local converted = value;
              assert std.isString(converted) : '"password_param" expected to be of type "string"';
              {
                password_param: converted,
              }
            ),
            withUri(value):: (
              local converted = value;
              assert std.isString(converted) : '"uri" expected to be of type "string"';
              {
                uri: converted,
              }
            ),
            withUsername(value):: (
              local converted = value;
              assert std.isString(converted) : '"username" expected to be of type "string"';
              {
                username: converted,
              }
            ),
          },
          withFont(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              font: value,
            }
          ),
          withFontMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              font+: converted,
            }
          ),
        },
        ebu_tt_d_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withCopyrightHolder(value):: (
            local converted = value;
            assert std.isString(converted) : '"copyright_holder" expected to be of type "string"';
            {
              copyright_holder: converted,
            }
          ),
          withFillLineGap(value):: (
            local converted = value;
            assert std.isString(converted) : '"fill_line_gap" expected to be of type "string"';
            {
              fill_line_gap: converted,
            }
          ),
          withFontFamily(value):: (
            local converted = value;
            assert std.isString(converted) : '"font_family" expected to be of type "string"';
            {
              font_family: converted,
            }
          ),
          withStyleControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"style_control" expected to be of type "string"';
            {
              style_control: converted,
            }
          ),
        },
        embedded_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        embedded_plus_scte20_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        rtmp_caption_info_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        scte20_plus_embedded_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        scte27_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        smpte_tt_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        teletext_destination_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        ttml_destination_settings:: {
          local block = self,
          new(styleControl):: (
            {}
            + block.withStyleControl(styleControl)
          ),
          withStyleControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"style_control" expected to be of type "string"';
            {
              style_control: converted,
            }
          ),
        },
        webvtt_destination_settings:: {
          local block = self,
          new(styleControl):: (
            {}
            + block.withStyleControl(styleControl)
          ),
          withStyleControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"style_control" expected to be of type "string"';
            {
              style_control: converted,
            }
          ),
        },
        withAribDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            arib_destination_settings: value,
          }
        ),
        withBurnInDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            burn_in_destination_settings: value,
          }
        ),
        withDvbSubDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dvb_sub_destination_settings: value,
          }
        ),
        withEbuTtDDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ebu_tt_d_destination_settings: value,
          }
        ),
        withEmbeddedDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            embedded_destination_settings: value,
          }
        ),
        withEmbeddedPlusScte20DestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            embedded_plus_scte20_destination_settings: value,
          }
        ),
        withRtmpCaptionInfoDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rtmp_caption_info_destination_settings: value,
          }
        ),
        withScte20PlusEmbeddedDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scte20_plus_embedded_destination_settings: value,
          }
        ),
        withScte27DestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scte27_destination_settings: value,
          }
        ),
        withSmpteTtDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            smpte_tt_destination_settings: value,
          }
        ),
        withTeletextDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            teletext_destination_settings: value,
          }
        ),
        withTtmlDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ttml_destination_settings: value,
          }
        ),
        withWebvttDestinationSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            webvtt_destination_settings: value,
          }
        ),
        withAribDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            arib_destination_settings+: converted,
          }
        ),
        withBurnInDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            burn_in_destination_settings+: converted,
          }
        ),
        withDvbSubDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dvb_sub_destination_settings+: converted,
          }
        ),
        withEbuTtDDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ebu_tt_d_destination_settings+: converted,
          }
        ),
        withEmbeddedDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            embedded_destination_settings+: converted,
          }
        ),
        withEmbeddedPlusScte20DestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            embedded_plus_scte20_destination_settings+: converted,
          }
        ),
        withRtmpCaptionInfoDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rtmp_caption_info_destination_settings+: converted,
          }
        ),
        withScte20PlusEmbeddedDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scte20_plus_embedded_destination_settings+: converted,
          }
        ),
        withScte27DestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scte27_destination_settings+: converted,
          }
        ),
        withSmpteTtDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            smpte_tt_destination_settings+: converted,
          }
        ),
        withTeletextDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            teletext_destination_settings+: converted,
          }
        ),
        withTtmlDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ttml_destination_settings+: converted,
          }
        ),
        withWebvttDestinationSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            webvtt_destination_settings+: converted,
          }
        ),
      },
      withDestinationSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_settings: value,
        }
      ),
      withDestinationSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_settings+: converted,
        }
      ),
    },
    global_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withInitialAudioGain(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"initial_audio_gain" expected to be of type "number"';
        {
          initial_audio_gain: converted,
        }
      ),
      withInputEndAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_end_action" expected to be of type "string"';
        {
          input_end_action: converted,
        }
      ),
      withOutputLockingMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_locking_mode" expected to be of type "string"';
        {
          output_locking_mode: converted,
        }
      ),
      withOutputTimingSource(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_timing_source" expected to be of type "string"';
        {
          output_timing_source: converted,
        }
      ),
      withSupportLowFramerateInputs(value):: (
        local converted = value;
        assert std.isString(converted) : '"support_low_framerate_inputs" expected to be of type "string"';
        {
          support_low_framerate_inputs: converted,
        }
      ),
      input_loss_behavior:: {
        local block = self,
        new():: (
          {}
        ),
        withBlackFrameMsec(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"black_frame_msec" expected to be of type "number"';
          {
            black_frame_msec: converted,
          }
        ),
        withInputLossImageColor(value):: (
          local converted = value;
          assert std.isString(converted) : '"input_loss_image_color" expected to be of type "string"';
          {
            input_loss_image_color: converted,
          }
        ),
        withInputLossImageType(value):: (
          local converted = value;
          assert std.isString(converted) : '"input_loss_image_type" expected to be of type "string"';
          {
            input_loss_image_type: converted,
          }
        ),
        withRepeatFrameMsec(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"repeat_frame_msec" expected to be of type "number"';
          {
            repeat_frame_msec: converted,
          }
        ),
        input_loss_image_slate:: {
          local block = self,
          new(uri):: (
            {}
            + block.withUri(uri)
          ),
          withPasswordParam(value):: (
            local converted = value;
            assert std.isString(converted) : '"password_param" expected to be of type "string"';
            {
              password_param: converted,
            }
          ),
          withUri(value):: (
            local converted = value;
            assert std.isString(converted) : '"uri" expected to be of type "string"';
            {
              uri: converted,
            }
          ),
          withUsername(value):: (
            local converted = value;
            assert std.isString(converted) : '"username" expected to be of type "string"';
            {
              username: converted,
            }
          ),
        },
        withInputLossImageSlate(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_loss_image_slate: value,
          }
        ),
        withInputLossImageSlateMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_loss_image_slate+: converted,
          }
        ),
      },
      withInputLossBehavior(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_loss_behavior: value,
        }
      ),
      withInputLossBehaviorMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_loss_behavior+: converted,
        }
      ),
    },
    motion_graphics_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withMotionGraphicsInsertion(value):: (
        local converted = value;
        assert std.isString(converted) : '"motion_graphics_insertion" expected to be of type "string"';
        {
          motion_graphics_insertion: converted,
        }
      ),
      motion_graphics_settings:: {
        local block = self,
        new():: (
          {}
        ),
        html_motion_graphics_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        withHtmlMotionGraphicsSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            html_motion_graphics_settings: value,
          }
        ),
        withHtmlMotionGraphicsSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            html_motion_graphics_settings+: converted,
          }
        ),
      },
      withMotionGraphicsSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          motion_graphics_settings: value,
        }
      ),
      withMotionGraphicsSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          motion_graphics_settings+: converted,
        }
      ),
    },
    nielsen_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withDistributorId(value):: (
        local converted = value;
        assert std.isString(converted) : '"distributor_id" expected to be of type "string"';
        {
          distributor_id: converted,
        }
      ),
      withNielsenPcmToId3Tagging(value):: (
        local converted = value;
        assert std.isString(converted) : '"nielsen_pcm_to_id3_tagging" expected to be of type "string"';
        {
          nielsen_pcm_to_id3_tagging: converted,
        }
      ),
    },
    output_groups:: {
      local block = self,
      new():: (
        {}
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      output_group_settings:: {
        local block = self,
        new():: (
          {}
        ),
        archive_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withRolloverInterval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"rollover_interval" expected to be of type "number"';
            {
              rollover_interval: converted,
            }
          ),
          archive_cdn_settings:: {
            local block = self,
            new():: (
              {}
            ),
            archive_s3_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withCannedAcl(value):: (
                local converted = value;
                assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
                {
                  canned_acl: converted,
                }
              ),
            },
            withArchiveS3Settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                archive_s3_settings: value,
              }
            ),
            withArchiveS3SettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                archive_s3_settings+: converted,
              }
            ),
          },
          destination:: {
            local block = self,
            new(destinationRefId):: (
              {}
              + block.withDestinationRefId(destinationRefId)
            ),
            withDestinationRefId(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          withArchiveCdnSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              archive_cdn_settings: value,
            }
          ),
          withDestination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          withArchiveCdnSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              archive_cdn_settings+: converted,
            }
          ),
          withDestinationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
        },
        frame_capture_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          destination:: {
            local block = self,
            new(destinationRefId):: (
              {}
              + block.withDestinationRefId(destinationRefId)
            ),
            withDestinationRefId(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          frame_capture_cdn_settings:: {
            local block = self,
            new():: (
              {}
            ),
            frame_capture_s3_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withCannedAcl(value):: (
                local converted = value;
                assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
                {
                  canned_acl: converted,
                }
              ),
            },
            withFrameCaptureS3Settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                frame_capture_s3_settings: value,
              }
            ),
            withFrameCaptureS3SettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                frame_capture_s3_settings+: converted,
              }
            ),
          },
          withDestination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          withFrameCaptureCdnSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              frame_capture_cdn_settings: value,
            }
          ),
          withDestinationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
          withFrameCaptureCdnSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              frame_capture_cdn_settings+: converted,
            }
          ),
        },
        hls_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withAdMarkers(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"ad_markers" expected to be of type "list"';
            {
              ad_markers: converted,
            }
          ),
          withAdMarkersMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"ad_markers" expected to be of type "list"';
            {
              ad_markers+: converted,
            }
          ),
          withBaseUrlContent(value):: (
            local converted = value;
            assert std.isString(converted) : '"base_url_content" expected to be of type "string"';
            {
              base_url_content: converted,
            }
          ),
          withBaseUrlContent1(value):: (
            local converted = value;
            assert std.isString(converted) : '"base_url_content1" expected to be of type "string"';
            {
              base_url_content1: converted,
            }
          ),
          withBaseUrlManifest(value):: (
            local converted = value;
            assert std.isString(converted) : '"base_url_manifest" expected to be of type "string"';
            {
              base_url_manifest: converted,
            }
          ),
          withBaseUrlManifest1(value):: (
            local converted = value;
            assert std.isString(converted) : '"base_url_manifest1" expected to be of type "string"';
            {
              base_url_manifest1: converted,
            }
          ),
          withCaptionLanguageSetting(value):: (
            local converted = value;
            assert std.isString(converted) : '"caption_language_setting" expected to be of type "string"';
            {
              caption_language_setting: converted,
            }
          ),
          withClientCache(value):: (
            local converted = value;
            assert std.isString(converted) : '"client_cache" expected to be of type "string"';
            {
              client_cache: converted,
            }
          ),
          withCodecSpecification(value):: (
            local converted = value;
            assert std.isString(converted) : '"codec_specification" expected to be of type "string"';
            {
              codec_specification: converted,
            }
          ),
          withConstantIv(value):: (
            local converted = value;
            assert std.isString(converted) : '"constant_iv" expected to be of type "string"';
            {
              constant_iv: converted,
            }
          ),
          withDirectoryStructure(value):: (
            local converted = value;
            assert std.isString(converted) : '"directory_structure" expected to be of type "string"';
            {
              directory_structure: converted,
            }
          ),
          withDiscontinuityTags(value):: (
            local converted = value;
            assert std.isString(converted) : '"discontinuity_tags" expected to be of type "string"';
            {
              discontinuity_tags: converted,
            }
          ),
          withEncryptionType(value):: (
            local converted = value;
            assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
            {
              encryption_type: converted,
            }
          ),
          withHlsId3SegmentTagging(value):: (
            local converted = value;
            assert std.isString(converted) : '"hls_id3_segment_tagging" expected to be of type "string"';
            {
              hls_id3_segment_tagging: converted,
            }
          ),
          withIframeOnlyPlaylists(value):: (
            local converted = value;
            assert std.isString(converted) : '"iframe_only_playlists" expected to be of type "string"';
            {
              iframe_only_playlists: converted,
            }
          ),
          withIncompleteSegmentBehavior(value):: (
            local converted = value;
            assert std.isString(converted) : '"incomplete_segment_behavior" expected to be of type "string"';
            {
              incomplete_segment_behavior: converted,
            }
          ),
          withIndexNSegments(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"index_n_segments" expected to be of type "number"';
            {
              index_n_segments: converted,
            }
          ),
          withInputLossAction(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_loss_action" expected to be of type "string"';
            {
              input_loss_action: converted,
            }
          ),
          withIvInManifest(value):: (
            local converted = value;
            assert std.isString(converted) : '"iv_in_manifest" expected to be of type "string"';
            {
              iv_in_manifest: converted,
            }
          ),
          withIvSource(value):: (
            local converted = value;
            assert std.isString(converted) : '"iv_source" expected to be of type "string"';
            {
              iv_source: converted,
            }
          ),
          withKeepSegments(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"keep_segments" expected to be of type "number"';
            {
              keep_segments: converted,
            }
          ),
          withKeyFormat(value):: (
            local converted = value;
            assert std.isString(converted) : '"key_format" expected to be of type "string"';
            {
              key_format: converted,
            }
          ),
          withKeyFormatVersions(value):: (
            local converted = value;
            assert std.isString(converted) : '"key_format_versions" expected to be of type "string"';
            {
              key_format_versions: converted,
            }
          ),
          withManifestCompression(value):: (
            local converted = value;
            assert std.isString(converted) : '"manifest_compression" expected to be of type "string"';
            {
              manifest_compression: converted,
            }
          ),
          withManifestDurationFormat(value):: (
            local converted = value;
            assert std.isString(converted) : '"manifest_duration_format" expected to be of type "string"';
            {
              manifest_duration_format: converted,
            }
          ),
          withMinSegmentLength(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_segment_length" expected to be of type "number"';
            {
              min_segment_length: converted,
            }
          ),
          withMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"mode" expected to be of type "string"';
            {
              mode: converted,
            }
          ),
          withOutputSelection(value):: (
            local converted = value;
            assert std.isString(converted) : '"output_selection" expected to be of type "string"';
            {
              output_selection: converted,
            }
          ),
          withProgramDateTime(value):: (
            local converted = value;
            assert std.isString(converted) : '"program_date_time" expected to be of type "string"';
            {
              program_date_time: converted,
            }
          ),
          withProgramDateTimeClock(value):: (
            local converted = value;
            assert std.isString(converted) : '"program_date_time_clock" expected to be of type "string"';
            {
              program_date_time_clock: converted,
            }
          ),
          withProgramDateTimePeriod(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"program_date_time_period" expected to be of type "number"';
            {
              program_date_time_period: converted,
            }
          ),
          withRedundantManifest(value):: (
            local converted = value;
            assert std.isString(converted) : '"redundant_manifest" expected to be of type "string"';
            {
              redundant_manifest: converted,
            }
          ),
          withSegmentLength(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"segment_length" expected to be of type "number"';
            {
              segment_length: converted,
            }
          ),
          withSegmentsPerSubdirectory(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"segments_per_subdirectory" expected to be of type "number"';
            {
              segments_per_subdirectory: converted,
            }
          ),
          withStreamInfResolution(value):: (
            local converted = value;
            assert std.isString(converted) : '"stream_inf_resolution" expected to be of type "string"';
            {
              stream_inf_resolution: converted,
            }
          ),
          withTimedMetadataId3Frame(value):: (
            local converted = value;
            assert std.isString(converted) : '"timed_metadata_id3_frame" expected to be of type "string"';
            {
              timed_metadata_id3_frame: converted,
            }
          ),
          withTimedMetadataId3Period(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timed_metadata_id3_period" expected to be of type "number"';
            {
              timed_metadata_id3_period: converted,
            }
          ),
          withTimestampDeltaMilliseconds(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timestamp_delta_milliseconds" expected to be of type "number"';
            {
              timestamp_delta_milliseconds: converted,
            }
          ),
          withTsFileMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"ts_file_mode" expected to be of type "string"';
            {
              ts_file_mode: converted,
            }
          ),
          caption_language_mappings:: {
            local block = self,
            new(captionChannel, languageCode, languageDescription):: (
              {}
              + block.withCaptionChannel(captionChannel)
              + block.withLanguageCode(languageCode)
              + block.withLanguageDescription(languageDescription)
            ),
            withCaptionChannel(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"caption_channel" expected to be of type "number"';
              {
                caption_channel: converted,
              }
            ),
            withLanguageCode(value):: (
              local converted = value;
              assert std.isString(converted) : '"language_code" expected to be of type "string"';
              {
                language_code: converted,
              }
            ),
            withLanguageDescription(value):: (
              local converted = value;
              assert std.isString(converted) : '"language_description" expected to be of type "string"';
              {
                language_description: converted,
              }
            ),
          },
          destination:: {
            local block = self,
            new(destinationRefId):: (
              {}
              + block.withDestinationRefId(destinationRefId)
            ),
            withDestinationRefId(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          hls_cdn_settings:: {
            local block = self,
            new():: (
              {}
            ),
            hls_akamai_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withConnectionRetryInterval(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
                {
                  connection_retry_interval: converted,
                }
              ),
              withFilecacheDuration(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
                {
                  filecache_duration: converted,
                }
              ),
              withHttpTransferMode(value):: (
                local converted = value;
                assert std.isString(converted) : '"http_transfer_mode" expected to be of type "string"';
                {
                  http_transfer_mode: converted,
                }
              ),
              withNumRetries(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
                {
                  num_retries: converted,
                }
              ),
              withRestartDelay(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
                {
                  restart_delay: converted,
                }
              ),
              withSalt(value):: (
                local converted = value;
                assert std.isString(converted) : '"salt" expected to be of type "string"';
                {
                  salt: converted,
                }
              ),
              withToken(value):: (
                local converted = value;
                assert std.isString(converted) : '"token" expected to be of type "string"';
                {
                  token: converted,
                }
              ),
            },
            hls_basic_put_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withConnectionRetryInterval(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
                {
                  connection_retry_interval: converted,
                }
              ),
              withFilecacheDuration(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
                {
                  filecache_duration: converted,
                }
              ),
              withNumRetries(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
                {
                  num_retries: converted,
                }
              ),
              withRestartDelay(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
                {
                  restart_delay: converted,
                }
              ),
            },
            hls_media_store_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withConnectionRetryInterval(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
                {
                  connection_retry_interval: converted,
                }
              ),
              withFilecacheDuration(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
                {
                  filecache_duration: converted,
                }
              ),
              withMediaStoreStorageClass(value):: (
                local converted = value;
                assert std.isString(converted) : '"media_store_storage_class" expected to be of type "string"';
                {
                  media_store_storage_class: converted,
                }
              ),
              withNumRetries(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
                {
                  num_retries: converted,
                }
              ),
              withRestartDelay(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
                {
                  restart_delay: converted,
                }
              ),
            },
            hls_s3_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withCannedAcl(value):: (
                local converted = value;
                assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
                {
                  canned_acl: converted,
                }
              ),
            },
            hls_webdav_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withConnectionRetryInterval(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
                {
                  connection_retry_interval: converted,
                }
              ),
              withFilecacheDuration(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
                {
                  filecache_duration: converted,
                }
              ),
              withHttpTransferMode(value):: (
                local converted = value;
                assert std.isString(converted) : '"http_transfer_mode" expected to be of type "string"';
                {
                  http_transfer_mode: converted,
                }
              ),
              withNumRetries(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
                {
                  num_retries: converted,
                }
              ),
              withRestartDelay(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
                {
                  restart_delay: converted,
                }
              ),
            },
            withHlsAkamaiSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_akamai_settings: value,
              }
            ),
            withHlsBasicPutSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_basic_put_settings: value,
              }
            ),
            withHlsMediaStoreSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_media_store_settings: value,
              }
            ),
            withHlsS3Settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_s3_settings: value,
              }
            ),
            withHlsWebdavSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_webdav_settings: value,
              }
            ),
            withHlsAkamaiSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_akamai_settings+: converted,
              }
            ),
            withHlsBasicPutSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_basic_put_settings+: converted,
              }
            ),
            withHlsMediaStoreSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_media_store_settings+: converted,
              }
            ),
            withHlsS3SettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_s3_settings+: converted,
              }
            ),
            withHlsWebdavSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_webdav_settings+: converted,
              }
            ),
          },
          key_provider_settings:: {
            local block = self,
            new():: (
              {}
            ),
            static_key_settings:: {
              local block = self,
              new(staticKeyValue):: (
                {}
                + block.withStaticKeyValue(staticKeyValue)
              ),
              withStaticKeyValue(value):: (
                local converted = value;
                assert std.isString(converted) : '"static_key_value" expected to be of type "string"';
                {
                  static_key_value: converted,
                }
              ),
              key_provider_server:: {
                local block = self,
                new(uri):: (
                  {}
                  + block.withUri(uri)
                ),
                withPasswordParam(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"password_param" expected to be of type "string"';
                  {
                    password_param: converted,
                  }
                ),
                withUri(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"uri" expected to be of type "string"';
                  {
                    uri: converted,
                  }
                ),
                withUsername(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"username" expected to be of type "string"';
                  {
                    username: converted,
                  }
                ),
              },
              withKeyProviderServer(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  key_provider_server: value,
                }
              ),
              withKeyProviderServerMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  key_provider_server+: converted,
                }
              ),
            },
            withStaticKeySettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                static_key_settings: value,
              }
            ),
            withStaticKeySettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                static_key_settings+: converted,
              }
            ),
          },
          withCaptionLanguageMappings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              caption_language_mappings: value,
            }
          ),
          withDestination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          withHlsCdnSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hls_cdn_settings: value,
            }
          ),
          withKeyProviderSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              key_provider_settings: value,
            }
          ),
          withCaptionLanguageMappingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              caption_language_mappings+: converted,
            }
          ),
          withDestinationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
          withHlsCdnSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hls_cdn_settings+: converted,
            }
          ),
          withKeyProviderSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              key_provider_settings+: converted,
            }
          ),
        },
        media_package_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          destination:: {
            local block = self,
            new(destinationRefId):: (
              {}
              + block.withDestinationRefId(destinationRefId)
            ),
            withDestinationRefId(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          withDestination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          withDestinationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
        },
        ms_smooth_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withAcquisitionPointId(value):: (
            local converted = value;
            assert std.isString(converted) : '"acquisition_point_id" expected to be of type "string"';
            {
              acquisition_point_id: converted,
            }
          ),
          withAudioOnlyTimecodeControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"audio_only_timecode_control" expected to be of type "string"';
            {
              audio_only_timecode_control: converted,
            }
          ),
          withCertificateMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"certificate_mode" expected to be of type "string"';
            {
              certificate_mode: converted,
            }
          ),
          withConnectionRetryInterval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
            {
              connection_retry_interval: converted,
            }
          ),
          withEventId(value):: (
            local converted = value;
            assert std.isString(converted) : '"event_id" expected to be of type "string"';
            {
              event_id: converted,
            }
          ),
          withEventIdMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"event_id_mode" expected to be of type "string"';
            {
              event_id_mode: converted,
            }
          ),
          withEventStopBehavior(value):: (
            local converted = value;
            assert std.isString(converted) : '"event_stop_behavior" expected to be of type "string"';
            {
              event_stop_behavior: converted,
            }
          ),
          withFilecacheDuration(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"filecache_duration" expected to be of type "number"';
            {
              filecache_duration: converted,
            }
          ),
          withFragmentLength(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"fragment_length" expected to be of type "number"';
            {
              fragment_length: converted,
            }
          ),
          withInputLossAction(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_loss_action" expected to be of type "string"';
            {
              input_loss_action: converted,
            }
          ),
          withNumRetries(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
            {
              num_retries: converted,
            }
          ),
          withRestartDelay(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
            {
              restart_delay: converted,
            }
          ),
          withSegmentationMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"segmentation_mode" expected to be of type "string"';
            {
              segmentation_mode: converted,
            }
          ),
          withSendDelayMs(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"send_delay_ms" expected to be of type "number"';
            {
              send_delay_ms: converted,
            }
          ),
          withSparseTrackType(value):: (
            local converted = value;
            assert std.isString(converted) : '"sparse_track_type" expected to be of type "string"';
            {
              sparse_track_type: converted,
            }
          ),
          withStreamManifestBehavior(value):: (
            local converted = value;
            assert std.isString(converted) : '"stream_manifest_behavior" expected to be of type "string"';
            {
              stream_manifest_behavior: converted,
            }
          ),
          withTimestampOffset(value):: (
            local converted = value;
            assert std.isString(converted) : '"timestamp_offset" expected to be of type "string"';
            {
              timestamp_offset: converted,
            }
          ),
          withTimestampOffsetMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"timestamp_offset_mode" expected to be of type "string"';
            {
              timestamp_offset_mode: converted,
            }
          ),
          destination:: {
            local block = self,
            new(destinationRefId):: (
              {}
              + block.withDestinationRefId(destinationRefId)
            ),
            withDestinationRefId(value):: (
              local converted = value;
              assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
              {
                destination_ref_id: converted,
              }
            ),
          },
          withDestination(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination: value,
            }
          ),
          withDestinationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              destination+: converted,
            }
          ),
        },
        multiplex_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
        },
        rtmp_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withAdMarkers(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"ad_markers" expected to be of type "list"';
            {
              ad_markers: converted,
            }
          ),
          withAdMarkersMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"ad_markers" expected to be of type "list"';
            {
              ad_markers+: converted,
            }
          ),
          withAuthenticationScheme(value):: (
            local converted = value;
            assert std.isString(converted) : '"authentication_scheme" expected to be of type "string"';
            {
              authentication_scheme: converted,
            }
          ),
          withCacheFullBehavior(value):: (
            local converted = value;
            assert std.isString(converted) : '"cache_full_behavior" expected to be of type "string"';
            {
              cache_full_behavior: converted,
            }
          ),
          withCacheLength(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"cache_length" expected to be of type "number"';
            {
              cache_length: converted,
            }
          ),
          withCaptionData(value):: (
            local converted = value;
            assert std.isString(converted) : '"caption_data" expected to be of type "string"';
            {
              caption_data: converted,
            }
          ),
          withInputLossAction(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_loss_action" expected to be of type "string"';
            {
              input_loss_action: converted,
            }
          ),
          withRestartDelay(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"restart_delay" expected to be of type "number"';
            {
              restart_delay: converted,
            }
          ),
        },
        udp_group_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withInputLossAction(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_loss_action" expected to be of type "string"';
            {
              input_loss_action: converted,
            }
          ),
          withTimedMetadataId3Frame(value):: (
            local converted = value;
            assert std.isString(converted) : '"timed_metadata_id3_frame" expected to be of type "string"';
            {
              timed_metadata_id3_frame: converted,
            }
          ),
          withTimedMetadataId3Period(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timed_metadata_id3_period" expected to be of type "number"';
            {
              timed_metadata_id3_period: converted,
            }
          ),
        },
        withArchiveGroupSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            archive_group_settings: value,
          }
        ),
        withFrameCaptureGroupSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            frame_capture_group_settings: value,
          }
        ),
        withHlsGroupSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hls_group_settings: value,
          }
        ),
        withMediaPackageGroupSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            media_package_group_settings: value,
          }
        ),
        withMsSmoothGroupSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ms_smooth_group_settings: value,
          }
        ),
        withMultiplexGroupSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multiplex_group_settings: value,
          }
        ),
        withRtmpGroupSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rtmp_group_settings: value,
          }
        ),
        withUdpGroupSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            udp_group_settings: value,
          }
        ),
        withArchiveGroupSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            archive_group_settings+: converted,
          }
        ),
        withFrameCaptureGroupSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            frame_capture_group_settings+: converted,
          }
        ),
        withHlsGroupSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hls_group_settings+: converted,
          }
        ),
        withMediaPackageGroupSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            media_package_group_settings+: converted,
          }
        ),
        withMsSmoothGroupSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ms_smooth_group_settings+: converted,
          }
        ),
        withMultiplexGroupSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multiplex_group_settings+: converted,
          }
        ),
        withRtmpGroupSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rtmp_group_settings+: converted,
          }
        ),
        withUdpGroupSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            udp_group_settings+: converted,
          }
        ),
      },
      outputs:: {
        local block = self,
        new():: (
          {}
        ),
        withAudioDescriptionNames(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audio_description_names" expected to be of type "set"';
          {
            audio_description_names: converted,
          }
        ),
        withAudioDescriptionNamesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audio_description_names" expected to be of type "set"';
          {
            audio_description_names+: converted,
          }
        ),
        withCaptionDescriptionNames(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"caption_description_names" expected to be of type "set"';
          {
            caption_description_names: converted,
          }
        ),
        withCaptionDescriptionNamesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"caption_description_names" expected to be of type "set"';
          {
            caption_description_names+: converted,
          }
        ),
        withOutputName(value):: (
          local converted = value;
          assert std.isString(converted) : '"output_name" expected to be of type "string"';
          {
            output_name: converted,
          }
        ),
        withVideoDescriptionName(value):: (
          local converted = value;
          assert std.isString(converted) : '"video_description_name" expected to be of type "string"';
          {
            video_description_name: converted,
          }
        ),
        output_settings:: {
          local block = self,
          new():: (
            {}
          ),
          archive_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withExtension(value):: (
              local converted = value;
              assert std.isString(converted) : '"extension" expected to be of type "string"';
              {
                extension: converted,
              }
            ),
            withNameModifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"name_modifier" expected to be of type "string"';
              {
                name_modifier: converted,
              }
            ),
            container_settings:: {
              local block = self,
              new():: (
                {}
              ),
              m2ts_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                withAbsentInputAudioBehavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"absent_input_audio_behavior" expected to be of type "string"';
                  {
                    absent_input_audio_behavior: converted,
                  }
                ),
                withArib(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib" expected to be of type "string"';
                  {
                    arib: converted,
                  }
                ),
                withAribCaptionsPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib_captions_pid" expected to be of type "string"';
                  {
                    arib_captions_pid: converted,
                  }
                ),
                withAribCaptionsPidControl(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib_captions_pid_control" expected to be of type "string"';
                  {
                    arib_captions_pid_control: converted,
                  }
                ),
                withAudioBufferModel(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_buffer_model" expected to be of type "string"';
                  {
                    audio_buffer_model: converted,
                  }
                ),
                withAudioFramesPerPes(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"audio_frames_per_pes" expected to be of type "number"';
                  {
                    audio_frames_per_pes: converted,
                  }
                ),
                withAudioPids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_pids" expected to be of type "string"';
                  {
                    audio_pids: converted,
                  }
                ),
                withAudioStreamType(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_stream_type" expected to be of type "string"';
                  {
                    audio_stream_type: converted,
                  }
                ),
                withBitrate(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
                  {
                    bitrate: converted,
                  }
                ),
                withBufferModel(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"buffer_model" expected to be of type "string"';
                  {
                    buffer_model: converted,
                  }
                ),
                withCcDescriptor(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"cc_descriptor" expected to be of type "string"';
                  {
                    cc_descriptor: converted,
                  }
                ),
                withDvbSubPids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"dvb_sub_pids" expected to be of type "string"';
                  {
                    dvb_sub_pids: converted,
                  }
                ),
                withDvbTeletextPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"dvb_teletext_pid" expected to be of type "string"';
                  {
                    dvb_teletext_pid: converted,
                  }
                ),
                withEbif(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebif" expected to be of type "string"';
                  {
                    ebif: converted,
                  }
                ),
                withEbpAudioInterval(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebp_audio_interval" expected to be of type "string"';
                  {
                    ebp_audio_interval: converted,
                  }
                ),
                withEbpLookaheadMs(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"ebp_lookahead_ms" expected to be of type "number"';
                  {
                    ebp_lookahead_ms: converted,
                  }
                ),
                withEbpPlacement(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebp_placement" expected to be of type "string"';
                  {
                    ebp_placement: converted,
                  }
                ),
                withEcmPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ecm_pid" expected to be of type "string"';
                  {
                    ecm_pid: converted,
                  }
                ),
                withEsRateInPes(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"es_rate_in_pes" expected to be of type "string"';
                  {
                    es_rate_in_pes: converted,
                  }
                ),
                withEtvPlatformPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"etv_platform_pid" expected to be of type "string"';
                  {
                    etv_platform_pid: converted,
                  }
                ),
                withEtvSignalPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"etv_signal_pid" expected to be of type "string"';
                  {
                    etv_signal_pid: converted,
                  }
                ),
                withFragmentTime(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"fragment_time" expected to be of type "number"';
                  {
                    fragment_time: converted,
                  }
                ),
                withKlv(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"klv" expected to be of type "string"';
                  {
                    klv: converted,
                  }
                ),
                withKlvDataPids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"klv_data_pids" expected to be of type "string"';
                  {
                    klv_data_pids: converted,
                  }
                ),
                withNielsenId3Behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"nielsen_id3_behavior" expected to be of type "string"';
                  {
                    nielsen_id3_behavior: converted,
                  }
                ),
                withNullPacketBitrate(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"null_packet_bitrate" expected to be of type "number"';
                  {
                    null_packet_bitrate: converted,
                  }
                ),
                withPatInterval(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pat_interval" expected to be of type "number"';
                  {
                    pat_interval: converted,
                  }
                ),
                withPcrControl(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pcr_control" expected to be of type "string"';
                  {
                    pcr_control: converted,
                  }
                ),
                withPcrPeriod(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pcr_period" expected to be of type "number"';
                  {
                    pcr_period: converted,
                  }
                ),
                withPcrPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pcr_pid" expected to be of type "string"';
                  {
                    pcr_pid: converted,
                  }
                ),
                withPmtInterval(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pmt_interval" expected to be of type "number"';
                  {
                    pmt_interval: converted,
                  }
                ),
                withPmtPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pmt_pid" expected to be of type "string"';
                  {
                    pmt_pid: converted,
                  }
                ),
                withProgramNum(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"program_num" expected to be of type "number"';
                  {
                    program_num: converted,
                  }
                ),
                withRateMode(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"rate_mode" expected to be of type "string"';
                  {
                    rate_mode: converted,
                  }
                ),
                withScte27Pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte27_pids" expected to be of type "string"';
                  {
                    scte27_pids: converted,
                  }
                ),
                withScte35Control(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte35_control" expected to be of type "string"';
                  {
                    scte35_control: converted,
                  }
                ),
                withScte35Pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte35_pid" expected to be of type "string"';
                  {
                    scte35_pid: converted,
                  }
                ),
                withSegmentationMarkers(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segmentation_markers" expected to be of type "string"';
                  {
                    segmentation_markers: converted,
                  }
                ),
                withSegmentationStyle(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segmentation_style" expected to be of type "string"';
                  {
                    segmentation_style: converted,
                  }
                ),
                withSegmentationTime(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"segmentation_time" expected to be of type "number"';
                  {
                    segmentation_time: converted,
                  }
                ),
                withTimedMetadataBehavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_behavior" expected to be of type "string"';
                  {
                    timed_metadata_behavior: converted,
                  }
                ),
                withTimedMetadataPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_pid" expected to be of type "string"';
                  {
                    timed_metadata_pid: converted,
                  }
                ),
                withTransportStreamId(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"transport_stream_id" expected to be of type "number"';
                  {
                    transport_stream_id: converted,
                  }
                ),
                withVideoPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"video_pid" expected to be of type "string"';
                  {
                    video_pid: converted,
                  }
                ),
                dvb_nit_settings:: {
                  local block = self,
                  new(networkId, networkName):: (
                    {}
                    + block.withNetworkId(networkId)
                    + block.withNetworkName(networkName)
                  ),
                  withNetworkId(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"network_id" expected to be of type "number"';
                    {
                      network_id: converted,
                    }
                  ),
                  withNetworkName(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"network_name" expected to be of type "string"';
                    {
                      network_name: converted,
                    }
                  ),
                  withRepInterval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                },
                dvb_sdt_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withOutputSdt(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"output_sdt" expected to be of type "string"';
                    {
                      output_sdt: converted,
                    }
                  ),
                  withRepInterval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                  withServiceName(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"service_name" expected to be of type "string"';
                    {
                      service_name: converted,
                    }
                  ),
                  withServiceProviderName(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"service_provider_name" expected to be of type "string"';
                    {
                      service_provider_name: converted,
                    }
                  ),
                },
                dvb_tdt_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withRepInterval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                },
                withDvbNitSettings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_nit_settings: value,
                  }
                ),
                withDvbSdtSettings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_sdt_settings: value,
                  }
                ),
                withDvbTdtSettings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_tdt_settings: value,
                  }
                ),
                withDvbNitSettingsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_nit_settings+: converted,
                  }
                ),
                withDvbSdtSettingsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_sdt_settings+: converted,
                  }
                ),
                withDvbTdtSettingsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_tdt_settings+: converted,
                  }
                ),
              },
              raw_settings:: {
                local block = self,
                new():: (
                  {}
                ),
              },
              withM2tsSettings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  m2ts_settings: value,
                }
              ),
              withRawSettings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  raw_settings: value,
                }
              ),
              withM2tsSettingsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  m2ts_settings+: converted,
                }
              ),
              withRawSettingsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  raw_settings+: converted,
                }
              ),
            },
            withContainerSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                container_settings: value,
              }
            ),
            withContainerSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                container_settings+: converted,
              }
            ),
          },
          frame_capture_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withNameModifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"name_modifier" expected to be of type "string"';
              {
                name_modifier: converted,
              }
            ),
          },
          hls_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withH265PackagingType(value):: (
              local converted = value;
              assert std.isString(converted) : '"h265_packaging_type" expected to be of type "string"';
              {
                h265_packaging_type: converted,
              }
            ),
            withNameModifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"name_modifier" expected to be of type "string"';
              {
                name_modifier: converted,
              }
            ),
            withSegmentModifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"segment_modifier" expected to be of type "string"';
              {
                segment_modifier: converted,
              }
            ),
            hls_settings:: {
              local block = self,
              new():: (
                {}
              ),
              audio_only_hls_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                withAudioGroupId(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_group_id" expected to be of type "string"';
                  {
                    audio_group_id: converted,
                  }
                ),
                withAudioTrackType(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_track_type" expected to be of type "string"';
                  {
                    audio_track_type: converted,
                  }
                ),
                withSegmentType(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segment_type" expected to be of type "string"';
                  {
                    segment_type: converted,
                  }
                ),
                audio_only_image:: {
                  local block = self,
                  new(uri):: (
                    {}
                    + block.withUri(uri)
                  ),
                  withPasswordParam(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"password_param" expected to be of type "string"';
                    {
                      password_param: converted,
                    }
                  ),
                  withUri(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"uri" expected to be of type "string"';
                    {
                      uri: converted,
                    }
                  ),
                  withUsername(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"username" expected to be of type "string"';
                    {
                      username: converted,
                    }
                  ),
                },
                withAudioOnlyImage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    audio_only_image: value,
                  }
                ),
                withAudioOnlyImageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    audio_only_image+: converted,
                  }
                ),
              },
              fmp4_hls_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                withAudioRenditionSets(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_rendition_sets" expected to be of type "string"';
                  {
                    audio_rendition_sets: converted,
                  }
                ),
                withNielsenId3Behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"nielsen_id3_behavior" expected to be of type "string"';
                  {
                    nielsen_id3_behavior: converted,
                  }
                ),
                withTimedMetadataBehavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_behavior" expected to be of type "string"';
                  {
                    timed_metadata_behavior: converted,
                  }
                ),
              },
              frame_capture_hls_settings:: {
                local block = self,
                new():: (
                  {}
                ),
              },
              standard_hls_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                withAudioRenditionSets(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_rendition_sets" expected to be of type "string"';
                  {
                    audio_rendition_sets: converted,
                  }
                ),
                m3u8_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withAudioFramesPerPes(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"audio_frames_per_pes" expected to be of type "number"';
                    {
                      audio_frames_per_pes: converted,
                    }
                  ),
                  withAudioPids(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"audio_pids" expected to be of type "string"';
                    {
                      audio_pids: converted,
                    }
                  ),
                  withEcmPid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"ecm_pid" expected to be of type "string"';
                    {
                      ecm_pid: converted,
                    }
                  ),
                  withNielsenId3Behavior(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"nielsen_id3_behavior" expected to be of type "string"';
                    {
                      nielsen_id3_behavior: converted,
                    }
                  ),
                  withPatInterval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"pat_interval" expected to be of type "number"';
                    {
                      pat_interval: converted,
                    }
                  ),
                  withPcrControl(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"pcr_control" expected to be of type "string"';
                    {
                      pcr_control: converted,
                    }
                  ),
                  withPcrPeriod(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"pcr_period" expected to be of type "number"';
                    {
                      pcr_period: converted,
                    }
                  ),
                  withPcrPid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"pcr_pid" expected to be of type "string"';
                    {
                      pcr_pid: converted,
                    }
                  ),
                  withPmtInterval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"pmt_interval" expected to be of type "number"';
                    {
                      pmt_interval: converted,
                    }
                  ),
                  withPmtPid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"pmt_pid" expected to be of type "string"';
                    {
                      pmt_pid: converted,
                    }
                  ),
                  withProgramNum(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"program_num" expected to be of type "number"';
                    {
                      program_num: converted,
                    }
                  ),
                  withScte35Behavior(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"scte35_behavior" expected to be of type "string"';
                    {
                      scte35_behavior: converted,
                    }
                  ),
                  withScte35Pid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"scte35_pid" expected to be of type "string"';
                    {
                      scte35_pid: converted,
                    }
                  ),
                  withTimedMetadataBehavior(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"timed_metadata_behavior" expected to be of type "string"';
                    {
                      timed_metadata_behavior: converted,
                    }
                  ),
                  withTimedMetadataPid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"timed_metadata_pid" expected to be of type "string"';
                    {
                      timed_metadata_pid: converted,
                    }
                  ),
                  withTransportStreamId(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"transport_stream_id" expected to be of type "number"';
                    {
                      transport_stream_id: converted,
                    }
                  ),
                  withVideoPid(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"video_pid" expected to be of type "string"';
                    {
                      video_pid: converted,
                    }
                  ),
                },
                withM3u8Settings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    m3u8_settings: value,
                  }
                ),
                withM3u8SettingsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    m3u8_settings+: converted,
                  }
                ),
              },
              withAudioOnlyHlsSettings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  audio_only_hls_settings: value,
                }
              ),
              withFmp4HlsSettings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  fmp4_hls_settings: value,
                }
              ),
              withFrameCaptureHlsSettings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  frame_capture_hls_settings: value,
                }
              ),
              withStandardHlsSettings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  standard_hls_settings: value,
                }
              ),
              withAudioOnlyHlsSettingsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  audio_only_hls_settings+: converted,
                }
              ),
              withFmp4HlsSettingsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  fmp4_hls_settings+: converted,
                }
              ),
              withFrameCaptureHlsSettingsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  frame_capture_hls_settings+: converted,
                }
              ),
              withStandardHlsSettingsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  standard_hls_settings+: converted,
                }
              ),
            },
            withHlsSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_settings: value,
              }
            ),
            withHlsSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hls_settings+: converted,
              }
            ),
          },
          media_package_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
          },
          ms_smooth_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withH265PackagingType(value):: (
              local converted = value;
              assert std.isString(converted) : '"h265_packaging_type" expected to be of type "string"';
              {
                h265_packaging_type: converted,
              }
            ),
            withNameModifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"name_modifier" expected to be of type "string"';
              {
                name_modifier: converted,
              }
            ),
          },
          multiplex_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            destination:: {
              local block = self,
              new(destinationRefId):: (
                {}
                + block.withDestinationRefId(destinationRefId)
              ),
              withDestinationRefId(value):: (
                local converted = value;
                assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
                {
                  destination_ref_id: converted,
                }
              ),
            },
            withDestination(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination: value,
              }
            ),
            withDestinationMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination+: converted,
              }
            ),
          },
          rtmp_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withCertificateMode(value):: (
              local converted = value;
              assert std.isString(converted) : '"certificate_mode" expected to be of type "string"';
              {
                certificate_mode: converted,
              }
            ),
            withConnectionRetryInterval(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"connection_retry_interval" expected to be of type "number"';
              {
                connection_retry_interval: converted,
              }
            ),
            withNumRetries(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"num_retries" expected to be of type "number"';
              {
                num_retries: converted,
              }
            ),
            destination:: {
              local block = self,
              new(destinationRefId):: (
                {}
                + block.withDestinationRefId(destinationRefId)
              ),
              withDestinationRefId(value):: (
                local converted = value;
                assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
                {
                  destination_ref_id: converted,
                }
              ),
            },
            withDestination(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination: value,
              }
            ),
            withDestinationMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination+: converted,
              }
            ),
          },
          udp_output_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withBufferMsec(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"buffer_msec" expected to be of type "number"';
              {
                buffer_msec: converted,
              }
            ),
            container_settings:: {
              local block = self,
              new():: (
                {}
              ),
              m2ts_settings:: {
                local block = self,
                new():: (
                  {}
                ),
                withAbsentInputAudioBehavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"absent_input_audio_behavior" expected to be of type "string"';
                  {
                    absent_input_audio_behavior: converted,
                  }
                ),
                withArib(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib" expected to be of type "string"';
                  {
                    arib: converted,
                  }
                ),
                withAribCaptionsPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib_captions_pid" expected to be of type "string"';
                  {
                    arib_captions_pid: converted,
                  }
                ),
                withAribCaptionsPidControl(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"arib_captions_pid_control" expected to be of type "string"';
                  {
                    arib_captions_pid_control: converted,
                  }
                ),
                withAudioBufferModel(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_buffer_model" expected to be of type "string"';
                  {
                    audio_buffer_model: converted,
                  }
                ),
                withAudioFramesPerPes(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"audio_frames_per_pes" expected to be of type "number"';
                  {
                    audio_frames_per_pes: converted,
                  }
                ),
                withAudioPids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_pids" expected to be of type "string"';
                  {
                    audio_pids: converted,
                  }
                ),
                withAudioStreamType(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"audio_stream_type" expected to be of type "string"';
                  {
                    audio_stream_type: converted,
                  }
                ),
                withBitrate(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
                  {
                    bitrate: converted,
                  }
                ),
                withBufferModel(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"buffer_model" expected to be of type "string"';
                  {
                    buffer_model: converted,
                  }
                ),
                withCcDescriptor(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"cc_descriptor" expected to be of type "string"';
                  {
                    cc_descriptor: converted,
                  }
                ),
                withDvbSubPids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"dvb_sub_pids" expected to be of type "string"';
                  {
                    dvb_sub_pids: converted,
                  }
                ),
                withDvbTeletextPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"dvb_teletext_pid" expected to be of type "string"';
                  {
                    dvb_teletext_pid: converted,
                  }
                ),
                withEbif(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebif" expected to be of type "string"';
                  {
                    ebif: converted,
                  }
                ),
                withEbpAudioInterval(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebp_audio_interval" expected to be of type "string"';
                  {
                    ebp_audio_interval: converted,
                  }
                ),
                withEbpLookaheadMs(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"ebp_lookahead_ms" expected to be of type "number"';
                  {
                    ebp_lookahead_ms: converted,
                  }
                ),
                withEbpPlacement(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ebp_placement" expected to be of type "string"';
                  {
                    ebp_placement: converted,
                  }
                ),
                withEcmPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"ecm_pid" expected to be of type "string"';
                  {
                    ecm_pid: converted,
                  }
                ),
                withEsRateInPes(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"es_rate_in_pes" expected to be of type "string"';
                  {
                    es_rate_in_pes: converted,
                  }
                ),
                withEtvPlatformPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"etv_platform_pid" expected to be of type "string"';
                  {
                    etv_platform_pid: converted,
                  }
                ),
                withEtvSignalPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"etv_signal_pid" expected to be of type "string"';
                  {
                    etv_signal_pid: converted,
                  }
                ),
                withFragmentTime(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"fragment_time" expected to be of type "number"';
                  {
                    fragment_time: converted,
                  }
                ),
                withKlv(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"klv" expected to be of type "string"';
                  {
                    klv: converted,
                  }
                ),
                withKlvDataPids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"klv_data_pids" expected to be of type "string"';
                  {
                    klv_data_pids: converted,
                  }
                ),
                withNielsenId3Behavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"nielsen_id3_behavior" expected to be of type "string"';
                  {
                    nielsen_id3_behavior: converted,
                  }
                ),
                withNullPacketBitrate(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"null_packet_bitrate" expected to be of type "number"';
                  {
                    null_packet_bitrate: converted,
                  }
                ),
                withPatInterval(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pat_interval" expected to be of type "number"';
                  {
                    pat_interval: converted,
                  }
                ),
                withPcrControl(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pcr_control" expected to be of type "string"';
                  {
                    pcr_control: converted,
                  }
                ),
                withPcrPeriod(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pcr_period" expected to be of type "number"';
                  {
                    pcr_period: converted,
                  }
                ),
                withPcrPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pcr_pid" expected to be of type "string"';
                  {
                    pcr_pid: converted,
                  }
                ),
                withPmtInterval(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"pmt_interval" expected to be of type "number"';
                  {
                    pmt_interval: converted,
                  }
                ),
                withPmtPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"pmt_pid" expected to be of type "string"';
                  {
                    pmt_pid: converted,
                  }
                ),
                withProgramNum(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"program_num" expected to be of type "number"';
                  {
                    program_num: converted,
                  }
                ),
                withRateMode(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"rate_mode" expected to be of type "string"';
                  {
                    rate_mode: converted,
                  }
                ),
                withScte27Pids(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte27_pids" expected to be of type "string"';
                  {
                    scte27_pids: converted,
                  }
                ),
                withScte35Control(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte35_control" expected to be of type "string"';
                  {
                    scte35_control: converted,
                  }
                ),
                withScte35Pid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"scte35_pid" expected to be of type "string"';
                  {
                    scte35_pid: converted,
                  }
                ),
                withSegmentationMarkers(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segmentation_markers" expected to be of type "string"';
                  {
                    segmentation_markers: converted,
                  }
                ),
                withSegmentationStyle(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"segmentation_style" expected to be of type "string"';
                  {
                    segmentation_style: converted,
                  }
                ),
                withSegmentationTime(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"segmentation_time" expected to be of type "number"';
                  {
                    segmentation_time: converted,
                  }
                ),
                withTimedMetadataBehavior(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_behavior" expected to be of type "string"';
                  {
                    timed_metadata_behavior: converted,
                  }
                ),
                withTimedMetadataPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"timed_metadata_pid" expected to be of type "string"';
                  {
                    timed_metadata_pid: converted,
                  }
                ),
                withTransportStreamId(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"transport_stream_id" expected to be of type "number"';
                  {
                    transport_stream_id: converted,
                  }
                ),
                withVideoPid(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"video_pid" expected to be of type "string"';
                  {
                    video_pid: converted,
                  }
                ),
                dvb_nit_settings:: {
                  local block = self,
                  new(networkId, networkName):: (
                    {}
                    + block.withNetworkId(networkId)
                    + block.withNetworkName(networkName)
                  ),
                  withNetworkId(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"network_id" expected to be of type "number"';
                    {
                      network_id: converted,
                    }
                  ),
                  withNetworkName(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"network_name" expected to be of type "string"';
                    {
                      network_name: converted,
                    }
                  ),
                  withRepInterval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                },
                dvb_sdt_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withOutputSdt(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"output_sdt" expected to be of type "string"';
                    {
                      output_sdt: converted,
                    }
                  ),
                  withRepInterval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                  withServiceName(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"service_name" expected to be of type "string"';
                    {
                      service_name: converted,
                    }
                  ),
                  withServiceProviderName(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"service_provider_name" expected to be of type "string"';
                    {
                      service_provider_name: converted,
                    }
                  ),
                },
                dvb_tdt_settings:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withRepInterval(value):: (
                    local converted = value;
                    assert std.isNumber(converted) : '"rep_interval" expected to be of type "number"';
                    {
                      rep_interval: converted,
                    }
                  ),
                },
                withDvbNitSettings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_nit_settings: value,
                  }
                ),
                withDvbSdtSettings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_sdt_settings: value,
                  }
                ),
                withDvbTdtSettings(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_tdt_settings: value,
                  }
                ),
                withDvbNitSettingsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_nit_settings+: converted,
                  }
                ),
                withDvbSdtSettingsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_sdt_settings+: converted,
                  }
                ),
                withDvbTdtSettingsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    dvb_tdt_settings+: converted,
                  }
                ),
              },
              withM2tsSettings(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  m2ts_settings: value,
                }
              ),
              withM2tsSettingsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  m2ts_settings+: converted,
                }
              ),
            },
            destination:: {
              local block = self,
              new(destinationRefId):: (
                {}
                + block.withDestinationRefId(destinationRefId)
              ),
              withDestinationRefId(value):: (
                local converted = value;
                assert std.isString(converted) : '"destination_ref_id" expected to be of type "string"';
                {
                  destination_ref_id: converted,
                }
              ),
            },
            fec_output_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withColumnDepth(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"column_depth" expected to be of type "number"';
                {
                  column_depth: converted,
                }
              ),
              withIncludeFec(value):: (
                local converted = value;
                assert std.isString(converted) : '"include_fec" expected to be of type "string"';
                {
                  include_fec: converted,
                }
              ),
              withRowLength(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"row_length" expected to be of type "number"';
                {
                  row_length: converted,
                }
              ),
            },
            withContainerSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                container_settings: value,
              }
            ),
            withDestination(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination: value,
              }
            ),
            withFecOutputSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                fec_output_settings: value,
              }
            ),
            withContainerSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                container_settings+: converted,
              }
            ),
            withDestinationMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                destination+: converted,
              }
            ),
            withFecOutputSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                fec_output_settings+: converted,
              }
            ),
          },
          withArchiveOutputSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              archive_output_settings: value,
            }
          ),
          withFrameCaptureOutputSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              frame_capture_output_settings: value,
            }
          ),
          withHlsOutputSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hls_output_settings: value,
            }
          ),
          withMediaPackageOutputSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              media_package_output_settings: value,
            }
          ),
          withMsSmoothOutputSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ms_smooth_output_settings: value,
            }
          ),
          withMultiplexOutputSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              multiplex_output_settings: value,
            }
          ),
          withRtmpOutputSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rtmp_output_settings: value,
            }
          ),
          withUdpOutputSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              udp_output_settings: value,
            }
          ),
          withArchiveOutputSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              archive_output_settings+: converted,
            }
          ),
          withFrameCaptureOutputSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              frame_capture_output_settings+: converted,
            }
          ),
          withHlsOutputSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hls_output_settings+: converted,
            }
          ),
          withMediaPackageOutputSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              media_package_output_settings+: converted,
            }
          ),
          withMsSmoothOutputSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ms_smooth_output_settings+: converted,
            }
          ),
          withMultiplexOutputSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              multiplex_output_settings+: converted,
            }
          ),
          withRtmpOutputSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rtmp_output_settings+: converted,
            }
          ),
          withUdpOutputSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              udp_output_settings+: converted,
            }
          ),
        },
        withOutputSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            output_settings: value,
          }
        ),
        withOutputSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            output_settings+: converted,
          }
        ),
      },
      withOutputGroupSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output_group_settings: value,
        }
      ),
      withOutputs(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          outputs: value,
        }
      ),
      withOutputGroupSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output_group_settings+: converted,
        }
      ),
      withOutputsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          outputs+: converted,
        }
      ),
    },
    timecode_config:: {
      local block = self,
      new(source):: (
        {}
        + block.withSource(source)
      ),
      withSource(value):: (
        local converted = value;
        assert std.isString(converted) : '"source" expected to be of type "string"';
        {
          source: converted,
        }
      ),
      withSyncThreshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"sync_threshold" expected to be of type "number"';
        {
          sync_threshold: converted,
        }
      ),
    },
    video_descriptions:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withHeight(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"height" expected to be of type "number"';
        {
          height: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withRespondToAfd(value):: (
        local converted = value;
        assert std.isString(converted) : '"respond_to_afd" expected to be of type "string"';
        {
          respond_to_afd: converted,
        }
      ),
      withScalingBehavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"scaling_behavior" expected to be of type "string"';
        {
          scaling_behavior: converted,
        }
      ),
      withSharpness(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"sharpness" expected to be of type "number"';
        {
          sharpness: converted,
        }
      ),
      withWidth(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"width" expected to be of type "number"';
        {
          width: converted,
        }
      ),
      codec_settings:: {
        local block = self,
        new():: (
          {}
        ),
        frame_capture_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withCaptureInterval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"capture_interval" expected to be of type "number"';
            {
              capture_interval: converted,
            }
          ),
          withCaptureIntervalUnits(value):: (
            local converted = value;
            assert std.isString(converted) : '"capture_interval_units" expected to be of type "string"';
            {
              capture_interval_units: converted,
            }
          ),
        },
        h264_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withAdaptiveQuantization(value):: (
            local converted = value;
            assert std.isString(converted) : '"adaptive_quantization" expected to be of type "string"';
            {
              adaptive_quantization: converted,
            }
          ),
          withAfdSignaling(value):: (
            local converted = value;
            assert std.isString(converted) : '"afd_signaling" expected to be of type "string"';
            {
              afd_signaling: converted,
            }
          ),
          withBitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          withBufFillPct(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"buf_fill_pct" expected to be of type "number"';
            {
              buf_fill_pct: converted,
            }
          ),
          withBufSize(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"buf_size" expected to be of type "number"';
            {
              buf_size: converted,
            }
          ),
          withColorMetadata(value):: (
            local converted = value;
            assert std.isString(converted) : '"color_metadata" expected to be of type "string"';
            {
              color_metadata: converted,
            }
          ),
          withEntropyEncoding(value):: (
            local converted = value;
            assert std.isString(converted) : '"entropy_encoding" expected to be of type "string"';
            {
              entropy_encoding: converted,
            }
          ),
          withFixedAfd(value):: (
            local converted = value;
            assert std.isString(converted) : '"fixed_afd" expected to be of type "string"';
            {
              fixed_afd: converted,
            }
          ),
          withFlickerAq(value):: (
            local converted = value;
            assert std.isString(converted) : '"flicker_aq" expected to be of type "string"';
            {
              flicker_aq: converted,
            }
          ),
          withForceFieldPictures(value):: (
            local converted = value;
            assert std.isString(converted) : '"force_field_pictures" expected to be of type "string"';
            {
              force_field_pictures: converted,
            }
          ),
          withFramerateControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"framerate_control" expected to be of type "string"';
            {
              framerate_control: converted,
            }
          ),
          withFramerateDenominator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"framerate_denominator" expected to be of type "number"';
            {
              framerate_denominator: converted,
            }
          ),
          withFramerateNumerator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"framerate_numerator" expected to be of type "number"';
            {
              framerate_numerator: converted,
            }
          ),
          withGopBReference(value):: (
            local converted = value;
            assert std.isString(converted) : '"gop_b_reference" expected to be of type "string"';
            {
              gop_b_reference: converted,
            }
          ),
          withGopClosedCadence(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_closed_cadence" expected to be of type "number"';
            {
              gop_closed_cadence: converted,
            }
          ),
          withGopNumBFrames(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_num_b_frames" expected to be of type "number"';
            {
              gop_num_b_frames: converted,
            }
          ),
          withGopSize(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_size" expected to be of type "number"';
            {
              gop_size: converted,
            }
          ),
          withGopSizeUnits(value):: (
            local converted = value;
            assert std.isString(converted) : '"gop_size_units" expected to be of type "string"';
            {
              gop_size_units: converted,
            }
          ),
          withLevel(value):: (
            local converted = value;
            assert std.isString(converted) : '"level" expected to be of type "string"';
            {
              level: converted,
            }
          ),
          withLookAheadRateControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"look_ahead_rate_control" expected to be of type "string"';
            {
              look_ahead_rate_control: converted,
            }
          ),
          withMaxBitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_bitrate" expected to be of type "number"';
            {
              max_bitrate: converted,
            }
          ),
          withMinIInterval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_i_interval" expected to be of type "number"';
            {
              min_i_interval: converted,
            }
          ),
          withNumRefFrames(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"num_ref_frames" expected to be of type "number"';
            {
              num_ref_frames: converted,
            }
          ),
          withParControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"par_control" expected to be of type "string"';
            {
              par_control: converted,
            }
          ),
          withParDenominator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"par_denominator" expected to be of type "number"';
            {
              par_denominator: converted,
            }
          ),
          withParNumerator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"par_numerator" expected to be of type "number"';
            {
              par_numerator: converted,
            }
          ),
          withProfile(value):: (
            local converted = value;
            assert std.isString(converted) : '"profile" expected to be of type "string"';
            {
              profile: converted,
            }
          ),
          withQualityLevel(value):: (
            local converted = value;
            assert std.isString(converted) : '"quality_level" expected to be of type "string"';
            {
              quality_level: converted,
            }
          ),
          withQvbrQualityLevel(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"qvbr_quality_level" expected to be of type "number"';
            {
              qvbr_quality_level: converted,
            }
          ),
          withRateControlMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"rate_control_mode" expected to be of type "string"';
            {
              rate_control_mode: converted,
            }
          ),
          withScanType(value):: (
            local converted = value;
            assert std.isString(converted) : '"scan_type" expected to be of type "string"';
            {
              scan_type: converted,
            }
          ),
          withSceneChangeDetect(value):: (
            local converted = value;
            assert std.isString(converted) : '"scene_change_detect" expected to be of type "string"';
            {
              scene_change_detect: converted,
            }
          ),
          withSlices(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"slices" expected to be of type "number"';
            {
              slices: converted,
            }
          ),
          withSoftness(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"softness" expected to be of type "number"';
            {
              softness: converted,
            }
          ),
          withSpatialAq(value):: (
            local converted = value;
            assert std.isString(converted) : '"spatial_aq" expected to be of type "string"';
            {
              spatial_aq: converted,
            }
          ),
          withSubgopLength(value):: (
            local converted = value;
            assert std.isString(converted) : '"subgop_length" expected to be of type "string"';
            {
              subgop_length: converted,
            }
          ),
          withSyntax(value):: (
            local converted = value;
            assert std.isString(converted) : '"syntax" expected to be of type "string"';
            {
              syntax: converted,
            }
          ),
          withTemporalAq(value):: (
            local converted = value;
            assert std.isString(converted) : '"temporal_aq" expected to be of type "string"';
            {
              temporal_aq: converted,
            }
          ),
          withTimecodeInsertion(value):: (
            local converted = value;
            assert std.isString(converted) : '"timecode_insertion" expected to be of type "string"';
            {
              timecode_insertion: converted,
            }
          ),
          filter_settings:: {
            local block = self,
            new():: (
              {}
            ),
            temporal_filter_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withPostFilterSharpening(value):: (
                local converted = value;
                assert std.isString(converted) : '"post_filter_sharpening" expected to be of type "string"';
                {
                  post_filter_sharpening: converted,
                }
              ),
              withStrength(value):: (
                local converted = value;
                assert std.isString(converted) : '"strength" expected to be of type "string"';
                {
                  strength: converted,
                }
              ),
            },
            withTemporalFilterSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                temporal_filter_settings: value,
              }
            ),
            withTemporalFilterSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                temporal_filter_settings+: converted,
              }
            ),
          },
          withFilterSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              filter_settings: value,
            }
          ),
          withFilterSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              filter_settings+: converted,
            }
          ),
        },
        h265_settings:: {
          local block = self,
          new(bitrate, framerateDenominator, framerateNumerator):: (
            {}
            + block.withBitrate(bitrate)
            + block.withFramerateDenominator(framerateDenominator)
            + block.withFramerateNumerator(framerateNumerator)
          ),
          withAdaptiveQuantization(value):: (
            local converted = value;
            assert std.isString(converted) : '"adaptive_quantization" expected to be of type "string"';
            {
              adaptive_quantization: converted,
            }
          ),
          withAfdSignaling(value):: (
            local converted = value;
            assert std.isString(converted) : '"afd_signaling" expected to be of type "string"';
            {
              afd_signaling: converted,
            }
          ),
          withAlternativeTransferFunction(value):: (
            local converted = value;
            assert std.isString(converted) : '"alternative_transfer_function" expected to be of type "string"';
            {
              alternative_transfer_function: converted,
            }
          ),
          withBitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bitrate" expected to be of type "number"';
            {
              bitrate: converted,
            }
          ),
          withBufSize(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"buf_size" expected to be of type "number"';
            {
              buf_size: converted,
            }
          ),
          withColorMetadata(value):: (
            local converted = value;
            assert std.isString(converted) : '"color_metadata" expected to be of type "string"';
            {
              color_metadata: converted,
            }
          ),
          withFixedAfd(value):: (
            local converted = value;
            assert std.isString(converted) : '"fixed_afd" expected to be of type "string"';
            {
              fixed_afd: converted,
            }
          ),
          withFlickerAq(value):: (
            local converted = value;
            assert std.isString(converted) : '"flicker_aq" expected to be of type "string"';
            {
              flicker_aq: converted,
            }
          ),
          withFramerateDenominator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"framerate_denominator" expected to be of type "number"';
            {
              framerate_denominator: converted,
            }
          ),
          withFramerateNumerator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"framerate_numerator" expected to be of type "number"';
            {
              framerate_numerator: converted,
            }
          ),
          withGopClosedCadence(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_closed_cadence" expected to be of type "number"';
            {
              gop_closed_cadence: converted,
            }
          ),
          withGopSize(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"gop_size" expected to be of type "number"';
            {
              gop_size: converted,
            }
          ),
          withGopSizeUnits(value):: (
            local converted = value;
            assert std.isString(converted) : '"gop_size_units" expected to be of type "string"';
            {
              gop_size_units: converted,
            }
          ),
          withLevel(value):: (
            local converted = value;
            assert std.isString(converted) : '"level" expected to be of type "string"';
            {
              level: converted,
            }
          ),
          withLookAheadRateControl(value):: (
            local converted = value;
            assert std.isString(converted) : '"look_ahead_rate_control" expected to be of type "string"';
            {
              look_ahead_rate_control: converted,
            }
          ),
          withMaxBitrate(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_bitrate" expected to be of type "number"';
            {
              max_bitrate: converted,
            }
          ),
          withMinIInterval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_i_interval" expected to be of type "number"';
            {
              min_i_interval: converted,
            }
          ),
          withMinQp(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"min_qp" expected to be of type "number"';
            {
              min_qp: converted,
            }
          ),
          withMvOverPictureBoundaries(value):: (
            local converted = value;
            assert std.isString(converted) : '"mv_over_picture_boundaries" expected to be of type "string"';
            {
              mv_over_picture_boundaries: converted,
            }
          ),
          withMvTemporalPredictor(value):: (
            local converted = value;
            assert std.isString(converted) : '"mv_temporal_predictor" expected to be of type "string"';
            {
              mv_temporal_predictor: converted,
            }
          ),
          withParDenominator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"par_denominator" expected to be of type "number"';
            {
              par_denominator: converted,
            }
          ),
          withParNumerator(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"par_numerator" expected to be of type "number"';
            {
              par_numerator: converted,
            }
          ),
          withProfile(value):: (
            local converted = value;
            assert std.isString(converted) : '"profile" expected to be of type "string"';
            {
              profile: converted,
            }
          ),
          withQvbrQualityLevel(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"qvbr_quality_level" expected to be of type "number"';
            {
              qvbr_quality_level: converted,
            }
          ),
          withRateControlMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"rate_control_mode" expected to be of type "string"';
            {
              rate_control_mode: converted,
            }
          ),
          withScanType(value):: (
            local converted = value;
            assert std.isString(converted) : '"scan_type" expected to be of type "string"';
            {
              scan_type: converted,
            }
          ),
          withSceneChangeDetect(value):: (
            local converted = value;
            assert std.isString(converted) : '"scene_change_detect" expected to be of type "string"';
            {
              scene_change_detect: converted,
            }
          ),
          withSlices(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"slices" expected to be of type "number"';
            {
              slices: converted,
            }
          ),
          withTier(value):: (
            local converted = value;
            assert std.isString(converted) : '"tier" expected to be of type "string"';
            {
              tier: converted,
            }
          ),
          withTileHeight(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"tile_height" expected to be of type "number"';
            {
              tile_height: converted,
            }
          ),
          withTilePadding(value):: (
            local converted = value;
            assert std.isString(converted) : '"tile_padding" expected to be of type "string"';
            {
              tile_padding: converted,
            }
          ),
          withTileWidth(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"tile_width" expected to be of type "number"';
            {
              tile_width: converted,
            }
          ),
          withTimecodeInsertion(value):: (
            local converted = value;
            assert std.isString(converted) : '"timecode_insertion" expected to be of type "string"';
            {
              timecode_insertion: converted,
            }
          ),
          withTreeblockSize(value):: (
            local converted = value;
            assert std.isString(converted) : '"treeblock_size" expected to be of type "string"';
            {
              treeblock_size: converted,
            }
          ),
          color_space_settings:: {
            local block = self,
            new():: (
              {}
            ),
            color_space_passthrough_settings:: {
              local block = self,
              new():: (
                {}
              ),
            },
            dolby_vision81_settings:: {
              local block = self,
              new():: (
                {}
              ),
            },
            hdr10_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withMaxCll(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"max_cll" expected to be of type "number"';
                {
                  max_cll: converted,
                }
              ),
              withMaxFall(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"max_fall" expected to be of type "number"';
                {
                  max_fall: converted,
                }
              ),
            },
            rec601_settings:: {
              local block = self,
              new():: (
                {}
              ),
            },
            rec709_settings:: {
              local block = self,
              new():: (
                {}
              ),
            },
            withColorSpacePassthroughSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                color_space_passthrough_settings: value,
              }
            ),
            withDolbyVision81Settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dolby_vision81_settings: value,
              }
            ),
            withHdr10Settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hdr10_settings: value,
              }
            ),
            withRec601Settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                rec601_settings: value,
              }
            ),
            withRec709Settings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                rec709_settings: value,
              }
            ),
            withColorSpacePassthroughSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                color_space_passthrough_settings+: converted,
              }
            ),
            withDolbyVision81SettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dolby_vision81_settings+: converted,
              }
            ),
            withHdr10SettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                hdr10_settings+: converted,
              }
            ),
            withRec601SettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                rec601_settings+: converted,
              }
            ),
            withRec709SettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                rec709_settings+: converted,
              }
            ),
          },
          filter_settings:: {
            local block = self,
            new():: (
              {}
            ),
            temporal_filter_settings:: {
              local block = self,
              new():: (
                {}
              ),
              withPostFilterSharpening(value):: (
                local converted = value;
                assert std.isString(converted) : '"post_filter_sharpening" expected to be of type "string"';
                {
                  post_filter_sharpening: converted,
                }
              ),
              withStrength(value):: (
                local converted = value;
                assert std.isString(converted) : '"strength" expected to be of type "string"';
                {
                  strength: converted,
                }
              ),
            },
            withTemporalFilterSettings(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                temporal_filter_settings: value,
              }
            ),
            withTemporalFilterSettingsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                temporal_filter_settings+: converted,
              }
            ),
          },
          timecode_burnin_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withPrefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix" expected to be of type "string"';
              {
                prefix: converted,
              }
            ),
            withTimecodeBurninFontSize(value):: (
              local converted = value;
              assert std.isString(converted) : '"timecode_burnin_font_size" expected to be of type "string"';
              {
                timecode_burnin_font_size: converted,
              }
            ),
            withTimecodeBurninPosition(value):: (
              local converted = value;
              assert std.isString(converted) : '"timecode_burnin_position" expected to be of type "string"';
              {
                timecode_burnin_position: converted,
              }
            ),
          },
          withColorSpaceSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              color_space_settings: value,
            }
          ),
          withFilterSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              filter_settings: value,
            }
          ),
          withTimecodeBurninSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              timecode_burnin_settings: value,
            }
          ),
          withColorSpaceSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              color_space_settings+: converted,
            }
          ),
          withFilterSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              filter_settings+: converted,
            }
          ),
          withTimecodeBurninSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              timecode_burnin_settings+: converted,
            }
          ),
        },
        withFrameCaptureSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            frame_capture_settings: value,
          }
        ),
        withH264Settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            h264_settings: value,
          }
        ),
        withH265Settings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            h265_settings: value,
          }
        ),
        withFrameCaptureSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            frame_capture_settings+: converted,
          }
        ),
        withH264SettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            h264_settings+: converted,
          }
        ),
        withH265SettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            h265_settings+: converted,
          }
        ),
      },
      withCodecSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          codec_settings: value,
        }
      ),
      withCodecSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          codec_settings+: converted,
        }
      ),
    },
    withAudioDescriptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audio_descriptions: value,
      }
    ),
    withAvailBlanking(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        avail_blanking: value,
      }
    ),
    withCaptionDescriptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        caption_descriptions: value,
      }
    ),
    withGlobalConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        global_configuration: value,
      }
    ),
    withMotionGraphicsConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        motion_graphics_configuration: value,
      }
    ),
    withNielsenConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nielsen_configuration: value,
      }
    ),
    withOutputGroups(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_groups: value,
      }
    ),
    withTimecodeConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timecode_config: value,
      }
    ),
    withVideoDescriptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        video_descriptions: value,
      }
    ),
    withAudioDescriptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        audio_descriptions+: converted,
      }
    ),
    withAvailBlankingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        avail_blanking+: converted,
      }
    ),
    withCaptionDescriptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        caption_descriptions+: converted,
      }
    ),
    withGlobalConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        global_configuration+: converted,
      }
    ),
    withMotionGraphicsConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        motion_graphics_configuration+: converted,
      }
    ),
    withNielsenConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nielsen_configuration+: converted,
      }
    ),
    withOutputGroupsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_groups+: converted,
      }
    ),
    withTimecodeConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timecode_config+: converted,
      }
    ),
    withVideoDescriptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        video_descriptions+: converted,
      }
    ),
  },
  input_attachments:: {
    local block = self,
    new(inputAttachmentName, inputId):: (
      {}
      + block.withInputAttachmentName(inputAttachmentName)
      + block.withInputId(inputId)
    ),
    withInputAttachmentName(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_attachment_name" expected to be of type "string"';
      {
        input_attachment_name: converted,
      }
    ),
    withInputId(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_id" expected to be of type "string"';
      {
        input_id: converted,
      }
    ),
    automatic_input_failover_settings:: {
      local block = self,
      new(secondaryInputId):: (
        {}
        + block.withSecondaryInputId(secondaryInputId)
      ),
      withErrorClearTimeMsec(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"error_clear_time_msec" expected to be of type "number"';
        {
          error_clear_time_msec: converted,
        }
      ),
      withInputPreference(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_preference" expected to be of type "string"';
        {
          input_preference: converted,
        }
      ),
      withSecondaryInputId(value):: (
        local converted = value;
        assert std.isString(converted) : '"secondary_input_id" expected to be of type "string"';
        {
          secondary_input_id: converted,
        }
      ),
      failover_condition:: {
        local block = self,
        new():: (
          {}
        ),
        failover_condition_settings:: {
          local block = self,
          new():: (
            {}
          ),
          audio_silence_settings:: {
            local block = self,
            new(audioSelectorName):: (
              {}
              + block.withAudioSelectorName(audioSelectorName)
            ),
            withAudioSelectorName(value):: (
              local converted = value;
              assert std.isString(converted) : '"audio_selector_name" expected to be of type "string"';
              {
                audio_selector_name: converted,
              }
            ),
            withAudioSilenceThresholdMsec(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"audio_silence_threshold_msec" expected to be of type "number"';
              {
                audio_silence_threshold_msec: converted,
              }
            ),
          },
          input_loss_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withInputLossThresholdMsec(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"input_loss_threshold_msec" expected to be of type "number"';
              {
                input_loss_threshold_msec: converted,
              }
            ),
          },
          video_black_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withBlackDetectThreshold(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"black_detect_threshold" expected to be of type "number"';
              {
                black_detect_threshold: converted,
              }
            ),
            withVideoBlackThresholdMsec(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"video_black_threshold_msec" expected to be of type "number"';
              {
                video_black_threshold_msec: converted,
              }
            ),
          },
          withAudioSilenceSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_silence_settings: value,
            }
          ),
          withInputLossSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_loss_settings: value,
            }
          ),
          withVideoBlackSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              video_black_settings: value,
            }
          ),
          withAudioSilenceSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_silence_settings+: converted,
            }
          ),
          withInputLossSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_loss_settings+: converted,
            }
          ),
          withVideoBlackSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              video_black_settings+: converted,
            }
          ),
        },
        withFailoverConditionSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failover_condition_settings: value,
          }
        ),
        withFailoverConditionSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failover_condition_settings+: converted,
          }
        ),
      },
      withFailoverCondition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failover_condition: value,
        }
      ),
      withFailoverConditionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failover_condition+: converted,
        }
      ),
    },
    input_settings:: {
      local block = self,
      new():: (
        {}
      ),
      withDeblockFilter(value):: (
        local converted = value;
        assert std.isString(converted) : '"deblock_filter" expected to be of type "string"';
        {
          deblock_filter: converted,
        }
      ),
      withDenoiseFilter(value):: (
        local converted = value;
        assert std.isString(converted) : '"denoise_filter" expected to be of type "string"';
        {
          denoise_filter: converted,
        }
      ),
      withFilterStrength(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"filter_strength" expected to be of type "number"';
        {
          filter_strength: converted,
        }
      ),
      withInputFilter(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_filter" expected to be of type "string"';
        {
          input_filter: converted,
        }
      ),
      withScte35Pid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"scte35_pid" expected to be of type "number"';
        {
          scte35_pid: converted,
        }
      ),
      withSmpte2038DataPreference(value):: (
        local converted = value;
        assert std.isString(converted) : '"smpte2038_data_preference" expected to be of type "string"';
        {
          smpte2038_data_preference: converted,
        }
      ),
      withSourceEndBehavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_end_behavior" expected to be of type "string"';
        {
          source_end_behavior: converted,
        }
      ),
      audio_selector:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        selector_settings:: {
          local block = self,
          new():: (
            {}
          ),
          audio_hls_rendition_selection:: {
            local block = self,
            new(groupId, name):: (
              {}
              + block.withGroupId(groupId)
              + block.withName(name)
            ),
            withGroupId(value):: (
              local converted = value;
              assert std.isString(converted) : '"group_id" expected to be of type "string"';
              {
                group_id: converted,
              }
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
          },
          audio_language_selection:: {
            local block = self,
            new(languageCode):: (
              {}
              + block.withLanguageCode(languageCode)
            ),
            withLanguageCode(value):: (
              local converted = value;
              assert std.isString(converted) : '"language_code" expected to be of type "string"';
              {
                language_code: converted,
              }
            ),
            withLanguageSelectionPolicy(value):: (
              local converted = value;
              assert std.isString(converted) : '"language_selection_policy" expected to be of type "string"';
              {
                language_selection_policy: converted,
              }
            ),
          },
          audio_pid_selection:: {
            local block = self,
            new(pid):: (
              {}
              + block.withPid(pid)
            ),
            withPid(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"pid" expected to be of type "number"';
              {
                pid: converted,
              }
            ),
          },
          audio_track_selection:: {
            local block = self,
            new():: (
              {}
            ),
            dolby_e_decode:: {
              local block = self,
              new(programSelection):: (
                {}
                + block.withProgramSelection(programSelection)
              ),
              withProgramSelection(value):: (
                local converted = value;
                assert std.isString(converted) : '"program_selection" expected to be of type "string"';
                {
                  program_selection: converted,
                }
              ),
            },
            tracks:: {
              local block = self,
              new(track):: (
                {}
                + block.withTrack(track)
              ),
              withTrack(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"track" expected to be of type "number"';
                {
                  track: converted,
                }
              ),
            },
            withDolbyEDecode(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dolby_e_decode: value,
              }
            ),
            withTracks(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tracks: value,
              }
            ),
            withDolbyEDecodeMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dolby_e_decode+: converted,
              }
            ),
            withTracksMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tracks+: converted,
              }
            ),
          },
          withAudioHlsRenditionSelection(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_hls_rendition_selection: value,
            }
          ),
          withAudioLanguageSelection(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_language_selection: value,
            }
          ),
          withAudioPidSelection(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_pid_selection: value,
            }
          ),
          withAudioTrackSelection(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_track_selection: value,
            }
          ),
          withAudioHlsRenditionSelectionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_hls_rendition_selection+: converted,
            }
          ),
          withAudioLanguageSelectionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_language_selection+: converted,
            }
          ),
          withAudioPidSelectionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_pid_selection+: converted,
            }
          ),
          withAudioTrackSelectionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_track_selection+: converted,
            }
          ),
        },
        withSelectorSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            selector_settings: value,
          }
        ),
        withSelectorSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            selector_settings+: converted,
          }
        ),
      },
      caption_selector:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withLanguageCode(value):: (
          local converted = value;
          assert std.isString(converted) : '"language_code" expected to be of type "string"';
          {
            language_code: converted,
          }
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        selector_settings:: {
          local block = self,
          new():: (
            {}
          ),
          ancillary_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withSourceAncillaryChannelNumber(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"source_ancillary_channel_number" expected to be of type "number"';
              {
                source_ancillary_channel_number: converted,
              }
            ),
          },
          arib_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
          },
          dvb_sub_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withOcrLanguage(value):: (
              local converted = value;
              assert std.isString(converted) : '"ocr_language" expected to be of type "string"';
              {
                ocr_language: converted,
              }
            ),
            withPid(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"pid" expected to be of type "number"';
              {
                pid: converted,
              }
            ),
          },
          embedded_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withConvert_608To_708(value):: (
              local converted = value;
              assert std.isString(converted) : '"convert_608_to_708" expected to be of type "string"';
              {
                convert_608_to_708: converted,
              }
            ),
            withScte20Detection(value):: (
              local converted = value;
              assert std.isString(converted) : '"scte20_detection" expected to be of type "string"';
              {
                scte20_detection: converted,
              }
            ),
            withSource_608ChannelNumber(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"source_608_channel_number" expected to be of type "number"';
              {
                source_608_channel_number: converted,
              }
            ),
          },
          scte20_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withConvert_608To_708(value):: (
              local converted = value;
              assert std.isString(converted) : '"convert_608_to_708" expected to be of type "string"';
              {
                convert_608_to_708: converted,
              }
            ),
            withSource_608ChannelNumber(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"source_608_channel_number" expected to be of type "number"';
              {
                source_608_channel_number: converted,
              }
            ),
          },
          scte27_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withOcrLanguage(value):: (
              local converted = value;
              assert std.isString(converted) : '"ocr_language" expected to be of type "string"';
              {
                ocr_language: converted,
              }
            ),
            withPid(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"pid" expected to be of type "number"';
              {
                pid: converted,
              }
            ),
          },
          teletext_source_settings:: {
            local block = self,
            new():: (
              {}
            ),
            withPageNumber(value):: (
              local converted = value;
              assert std.isString(converted) : '"page_number" expected to be of type "string"';
              {
                page_number: converted,
              }
            ),
            output_rectangle:: {
              local block = self,
              new(height, leftOffset, topOffset, width):: (
                {}
                + block.withHeight(height)
                + block.withLeftOffset(leftOffset)
                + block.withTopOffset(topOffset)
                + block.withWidth(width)
              ),
              withHeight(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"height" expected to be of type "number"';
                {
                  height: converted,
                }
              ),
              withLeftOffset(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"left_offset" expected to be of type "number"';
                {
                  left_offset: converted,
                }
              ),
              withTopOffset(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"top_offset" expected to be of type "number"';
                {
                  top_offset: converted,
                }
              ),
              withWidth(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"width" expected to be of type "number"';
                {
                  width: converted,
                }
              ),
            },
            withOutputRectangle(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                output_rectangle: value,
              }
            ),
            withOutputRectangleMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                output_rectangle+: converted,
              }
            ),
          },
          withAncillarySourceSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ancillary_source_settings: value,
            }
          ),
          withAribSourceSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              arib_source_settings: value,
            }
          ),
          withDvbSubSourceSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dvb_sub_source_settings: value,
            }
          ),
          withEmbeddedSourceSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              embedded_source_settings: value,
            }
          ),
          withScte20SourceSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              scte20_source_settings: value,
            }
          ),
          withScte27SourceSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              scte27_source_settings: value,
            }
          ),
          withTeletextSourceSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              teletext_source_settings: value,
            }
          ),
          withAncillarySourceSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ancillary_source_settings+: converted,
            }
          ),
          withAribSourceSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              arib_source_settings+: converted,
            }
          ),
          withDvbSubSourceSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dvb_sub_source_settings+: converted,
            }
          ),
          withEmbeddedSourceSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              embedded_source_settings+: converted,
            }
          ),
          withScte20SourceSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              scte20_source_settings+: converted,
            }
          ),
          withScte27SourceSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              scte27_source_settings+: converted,
            }
          ),
          withTeletextSourceSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              teletext_source_settings+: converted,
            }
          ),
        },
        withSelectorSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            selector_settings: value,
          }
        ),
        withSelectorSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            selector_settings+: converted,
          }
        ),
      },
      network_input_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withServerValidation(value):: (
          local converted = value;
          assert std.isString(converted) : '"server_validation" expected to be of type "string"';
          {
            server_validation: converted,
          }
        ),
        hls_input_settings:: {
          local block = self,
          new():: (
            {}
          ),
          withBandwidth(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"bandwidth" expected to be of type "number"';
            {
              bandwidth: converted,
            }
          ),
          withBufferSegments(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"buffer_segments" expected to be of type "number"';
            {
              buffer_segments: converted,
            }
          ),
          withRetries(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"retries" expected to be of type "number"';
            {
              retries: converted,
            }
          ),
          withRetryInterval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"retry_interval" expected to be of type "number"';
            {
              retry_interval: converted,
            }
          ),
          withScte35Source(value):: (
            local converted = value;
            assert std.isString(converted) : '"scte35_source" expected to be of type "string"';
            {
              scte35_source: converted,
            }
          ),
        },
        withHlsInputSettings(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hls_input_settings: value,
          }
        ),
        withHlsInputSettingsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hls_input_settings+: converted,
          }
        ),
      },
      video_selector:: {
        local block = self,
        new():: (
          {}
        ),
        withColorSpace(value):: (
          local converted = value;
          assert std.isString(converted) : '"color_space" expected to be of type "string"';
          {
            color_space: converted,
          }
        ),
        withColorSpaceUsage(value):: (
          local converted = value;
          assert std.isString(converted) : '"color_space_usage" expected to be of type "string"';
          {
            color_space_usage: converted,
          }
        ),
      },
      withAudioSelector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_selector: value,
        }
      ),
      withCaptionSelector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          caption_selector: value,
        }
      ),
      withNetworkInputSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_input_settings: value,
        }
      ),
      withVideoSelector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          video_selector: value,
        }
      ),
      withAudioSelectorMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audio_selector+: converted,
        }
      ),
      withCaptionSelectorMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          caption_selector+: converted,
        }
      ),
      withNetworkInputSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_input_settings+: converted,
        }
      ),
      withVideoSelectorMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          video_selector+: converted,
        }
      ),
    },
    withAutomaticInputFailoverSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        automatic_input_failover_settings: value,
      }
    ),
    withInputSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_settings: value,
      }
    ),
    withAutomaticInputFailoverSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        automatic_input_failover_settings+: converted,
      }
    ),
    withInputSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_settings+: converted,
      }
    ),
  },
  input_specification:: {
    local block = self,
    new(codec, inputResolution, maximumBitrate):: (
      {}
      + block.withCodec(codec)
      + block.withInputResolution(inputResolution)
      + block.withMaximumBitrate(maximumBitrate)
    ),
    withCodec(value):: (
      local converted = value;
      assert std.isString(converted) : '"codec" expected to be of type "string"';
      {
        codec: converted,
      }
    ),
    withInputResolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_resolution" expected to be of type "string"';
      {
        input_resolution: converted,
      }
    ),
    withMaximumBitrate(value):: (
      local converted = value;
      assert std.isString(converted) : '"maximum_bitrate" expected to be of type "string"';
      {
        maximum_bitrate: converted,
      }
    ),
  },
  maintenance:: {
    local block = self,
    new(maintenanceDay, maintenanceStartTime):: (
      {}
      + block.withMaintenanceDay(maintenanceDay)
      + block.withMaintenanceStartTime(maintenanceStartTime)
    ),
    withMaintenanceDay(value):: (
      local converted = value;
      assert std.isString(converted) : '"maintenance_day" expected to be of type "string"';
      {
        maintenance_day: converted,
      }
    ),
    withMaintenanceStartTime(value):: (
      local converted = value;
      assert std.isString(converted) : '"maintenance_start_time" expected to be of type "string"';
      {
        maintenance_start_time: converted,
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
  vpc:: {
    local block = self,
    new(publicAddressAllocationIds, subnetIds):: (
      {}
      + block.withPublicAddressAllocationIds(publicAddressAllocationIds)
      + block.withSubnetIds(subnetIds)
    ),
    withPublicAddressAllocationIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"public_address_allocation_ids" expected to be of type "list"';
      {
        public_address_allocation_ids: converted,
      }
    ),
    withPublicAddressAllocationIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"public_address_allocation_ids" expected to be of type "list"';
      {
        public_address_allocation_ids+: converted,
      }
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
  withCdiInputSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cdi_input_specification: value,
    }
  ),
  withDestinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destinations: value,
    }
  ),
  withEncoderSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encoder_settings: value,
    }
  ),
  withInputAttachments(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_attachments: value,
    }
  ),
  withInputSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_specification: value,
    }
  ),
  withMaintenance(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpc(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc: value,
    }
  ),
  withCdiInputSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cdi_input_specification+: converted,
    }
  ),
  withDestinationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destinations+: converted,
    }
  ),
  withEncoderSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encoder_settings+: converted,
    }
  ),
  withInputAttachmentsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_attachments+: converted,
    }
  ),
  withInputSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_specification+: converted,
    }
  ),
  withMaintenanceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance+: converted,
    }
  ),
  withVpcMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc+: converted,
    }
  ),
}
