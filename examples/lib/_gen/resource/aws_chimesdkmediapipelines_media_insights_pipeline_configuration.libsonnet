{
  local block = self,
  new(terraformName, name, resourceAccessRoleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chimesdkmediapipelines_media_insights_pipeline_configuration",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "resource_access_role_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withResourceAccessRoleArn(resourceAccessRoleArn)
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
  withResourceAccessRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_access_role_arn" expected to be of type "string"';
    {
      resource_access_role_arn: converted,
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
  elements:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    amazon_transcribe_call_analytics_processor_configuration:: {
      local block = self,
      new(languageCode):: (
        {}
        + block.withLanguageCode(languageCode)
      ),
      withCallAnalyticsStreamCategories(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"call_analytics_stream_categories" expected to be of type "list"';
        {
          call_analytics_stream_categories: converted,
        }
      ),
      withCallAnalyticsStreamCategoriesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"call_analytics_stream_categories" expected to be of type "list"';
        {
          call_analytics_stream_categories+: converted,
        }
      ),
      withContentIdentificationType(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_identification_type" expected to be of type "string"';
        {
          content_identification_type: converted,
        }
      ),
      withContentRedactionType(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_redaction_type" expected to be of type "string"';
        {
          content_redaction_type: converted,
        }
      ),
      withEnablePartialResultsStabilization(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_partial_results_stabilization" expected to be of type "bool"';
        {
          enable_partial_results_stabilization: converted,
        }
      ),
      withFilterPartialResults(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"filter_partial_results" expected to be of type "bool"';
        {
          filter_partial_results: converted,
        }
      ),
      withLanguageCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code" expected to be of type "string"';
        {
          language_code: converted,
        }
      ),
      withLanguageModelName(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_model_name" expected to be of type "string"';
        {
          language_model_name: converted,
        }
      ),
      withPartialResultsStability(value):: (
        local converted = value;
        assert std.isString(converted) : '"partial_results_stability" expected to be of type "string"';
        {
          partial_results_stability: converted,
        }
      ),
      withPiiEntityTypes(value):: (
        local converted = value;
        assert std.isString(converted) : '"pii_entity_types" expected to be of type "string"';
        {
          pii_entity_types: converted,
        }
      ),
      withVocabularyFilterMethod(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_filter_method" expected to be of type "string"';
        {
          vocabulary_filter_method: converted,
        }
      ),
      withVocabularyFilterName(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_filter_name" expected to be of type "string"';
        {
          vocabulary_filter_name: converted,
        }
      ),
      withVocabularyName(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_name" expected to be of type "string"';
        {
          vocabulary_name: converted,
        }
      ),
      post_call_analytics_settings:: {
        local block = self,
        new(dataAccessRoleArn, outputLocation):: (
          {}
          + block.withDataAccessRoleArn(dataAccessRoleArn)
          + block.withOutputLocation(outputLocation)
        ),
        withContentRedactionOutput(value):: (
          local converted = value;
          assert std.isString(converted) : '"content_redaction_output" expected to be of type "string"';
          {
            content_redaction_output: converted,
          }
        ),
        withDataAccessRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_access_role_arn" expected to be of type "string"';
          {
            data_access_role_arn: converted,
          }
        ),
        withOutputEncryptionKmsKeyId(value):: (
          local converted = value;
          assert std.isString(converted) : '"output_encryption_kms_key_id" expected to be of type "string"';
          {
            output_encryption_kms_key_id: converted,
          }
        ),
        withOutputLocation(value):: (
          local converted = value;
          assert std.isString(converted) : '"output_location" expected to be of type "string"';
          {
            output_location: converted,
          }
        ),
      },
      withPostCallAnalyticsSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_call_analytics_settings: value,
        }
      ),
      withPostCallAnalyticsSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_call_analytics_settings+: converted,
        }
      ),
    },
    amazon_transcribe_processor_configuration:: {
      local block = self,
      new(languageCode):: (
        {}
        + block.withLanguageCode(languageCode)
      ),
      withContentIdentificationType(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_identification_type" expected to be of type "string"';
        {
          content_identification_type: converted,
        }
      ),
      withContentRedactionType(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_redaction_type" expected to be of type "string"';
        {
          content_redaction_type: converted,
        }
      ),
      withEnablePartialResultsStabilization(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_partial_results_stabilization" expected to be of type "bool"';
        {
          enable_partial_results_stabilization: converted,
        }
      ),
      withFilterPartialResults(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"filter_partial_results" expected to be of type "bool"';
        {
          filter_partial_results: converted,
        }
      ),
      withLanguageCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_code" expected to be of type "string"';
        {
          language_code: converted,
        }
      ),
      withLanguageModelName(value):: (
        local converted = value;
        assert std.isString(converted) : '"language_model_name" expected to be of type "string"';
        {
          language_model_name: converted,
        }
      ),
      withPartialResultsStability(value):: (
        local converted = value;
        assert std.isString(converted) : '"partial_results_stability" expected to be of type "string"';
        {
          partial_results_stability: converted,
        }
      ),
      withPiiEntityTypes(value):: (
        local converted = value;
        assert std.isString(converted) : '"pii_entity_types" expected to be of type "string"';
        {
          pii_entity_types: converted,
        }
      ),
      withShowSpeakerLabel(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"show_speaker_label" expected to be of type "bool"';
        {
          show_speaker_label: converted,
        }
      ),
      withVocabularyFilterMethod(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_filter_method" expected to be of type "string"';
        {
          vocabulary_filter_method: converted,
        }
      ),
      withVocabularyFilterName(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_filter_name" expected to be of type "string"';
        {
          vocabulary_filter_name: converted,
        }
      ),
      withVocabularyName(value):: (
        local converted = value;
        assert std.isString(converted) : '"vocabulary_name" expected to be of type "string"';
        {
          vocabulary_name: converted,
        }
      ),
    },
    kinesis_data_stream_sink_configuration:: {
      local block = self,
      new(insightsTarget):: (
        {}
        + block.withInsightsTarget(insightsTarget)
      ),
      withInsightsTarget(value):: (
        local converted = value;
        assert std.isString(converted) : '"insights_target" expected to be of type "string"';
        {
          insights_target: converted,
        }
      ),
    },
    lambda_function_sink_configuration:: {
      local block = self,
      new(insightsTarget):: (
        {}
        + block.withInsightsTarget(insightsTarget)
      ),
      withInsightsTarget(value):: (
        local converted = value;
        assert std.isString(converted) : '"insights_target" expected to be of type "string"';
        {
          insights_target: converted,
        }
      ),
    },
    s3_recording_sink_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withDestination(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination" expected to be of type "string"';
        {
          destination: converted,
        }
      ),
    },
    sns_topic_sink_configuration:: {
      local block = self,
      new(insightsTarget):: (
        {}
        + block.withInsightsTarget(insightsTarget)
      ),
      withInsightsTarget(value):: (
        local converted = value;
        assert std.isString(converted) : '"insights_target" expected to be of type "string"';
        {
          insights_target: converted,
        }
      ),
    },
    sqs_queue_sink_configuration:: {
      local block = self,
      new(insightsTarget):: (
        {}
        + block.withInsightsTarget(insightsTarget)
      ),
      withInsightsTarget(value):: (
        local converted = value;
        assert std.isString(converted) : '"insights_target" expected to be of type "string"';
        {
          insights_target: converted,
        }
      ),
    },
    voice_analytics_processor_configuration:: {
      local block = self,
      new(speakerSearchStatus, voiceToneAnalysisStatus):: (
        {}
        + block.withSpeakerSearchStatus(speakerSearchStatus)
        + block.withVoiceToneAnalysisStatus(voiceToneAnalysisStatus)
      ),
      withSpeakerSearchStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"speaker_search_status" expected to be of type "string"';
        {
          speaker_search_status: converted,
        }
      ),
      withVoiceToneAnalysisStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"voice_tone_analysis_status" expected to be of type "string"';
        {
          voice_tone_analysis_status: converted,
        }
      ),
    },
    withAmazonTranscribeCallAnalyticsProcessorConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_transcribe_call_analytics_processor_configuration: value,
      }
    ),
    withAmazonTranscribeProcessorConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_transcribe_processor_configuration: value,
      }
    ),
    withKinesisDataStreamSinkConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_stream_sink_configuration: value,
      }
    ),
    withLambdaFunctionSinkConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_sink_configuration: value,
      }
    ),
    withS3RecordingSinkConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_recording_sink_configuration: value,
      }
    ),
    withSnsTopicSinkConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_topic_sink_configuration: value,
      }
    ),
    withSqsQueueSinkConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_sink_configuration: value,
      }
    ),
    withVoiceAnalyticsProcessorConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        voice_analytics_processor_configuration: value,
      }
    ),
    withAmazonTranscribeCallAnalyticsProcessorConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_transcribe_call_analytics_processor_configuration+: converted,
      }
    ),
    withAmazonTranscribeProcessorConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_transcribe_processor_configuration+: converted,
      }
    ),
    withKinesisDataStreamSinkConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_stream_sink_configuration+: converted,
      }
    ),
    withLambdaFunctionSinkConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_sink_configuration+: converted,
      }
    ),
    withS3RecordingSinkConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_recording_sink_configuration+: converted,
      }
    ),
    withSnsTopicSinkConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_topic_sink_configuration+: converted,
      }
    ),
    withSqsQueueSinkConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_sink_configuration+: converted,
      }
    ),
    withVoiceAnalyticsProcessorConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        voice_analytics_processor_configuration+: converted,
      }
    ),
  },
  real_time_alert_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withDisabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
      {
        disabled: converted,
      }
    ),
    rules:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      issue_detection_configuration:: {
        local block = self,
        new(ruleName):: (
          {}
          + block.withRuleName(ruleName)
        ),
        withRuleName(value):: (
          local converted = value;
          assert std.isString(converted) : '"rule_name" expected to be of type "string"';
          {
            rule_name: converted,
          }
        ),
      },
      keyword_match_configuration:: {
        local block = self,
        new(keywords, ruleName):: (
          {}
          + block.withKeywords(keywords)
          + block.withRuleName(ruleName)
        ),
        withKeywords(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"keywords" expected to be of type "list"';
          {
            keywords: converted,
          }
        ),
        withKeywordsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"keywords" expected to be of type "list"';
          {
            keywords+: converted,
          }
        ),
        withNegate(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"negate" expected to be of type "bool"';
          {
            negate: converted,
          }
        ),
        withRuleName(value):: (
          local converted = value;
          assert std.isString(converted) : '"rule_name" expected to be of type "string"';
          {
            rule_name: converted,
          }
        ),
      },
      sentiment_configuration:: {
        local block = self,
        new(ruleName, sentimentType, timePeriod):: (
          {}
          + block.withRuleName(ruleName)
          + block.withSentimentType(sentimentType)
          + block.withTimePeriod(timePeriod)
        ),
        withRuleName(value):: (
          local converted = value;
          assert std.isString(converted) : '"rule_name" expected to be of type "string"';
          {
            rule_name: converted,
          }
        ),
        withSentimentType(value):: (
          local converted = value;
          assert std.isString(converted) : '"sentiment_type" expected to be of type "string"';
          {
            sentiment_type: converted,
          }
        ),
        withTimePeriod(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"time_period" expected to be of type "number"';
          {
            time_period: converted,
          }
        ),
      },
      withIssueDetectionConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          issue_detection_configuration: value,
        }
      ),
      withKeywordMatchConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          keyword_match_configuration: value,
        }
      ),
      withSentimentConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sentiment_configuration: value,
        }
      ),
      withIssueDetectionConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          issue_detection_configuration+: converted,
        }
      ),
      withKeywordMatchConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          keyword_match_configuration+: converted,
        }
      ),
      withSentimentConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sentiment_configuration+: converted,
        }
      ),
    },
    withRules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules: value,
      }
    ),
    withRulesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules+: converted,
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
  withElements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elements: value,
    }
  ),
  withRealTimeAlertConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      real_time_alert_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withElementsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elements+: converted,
    }
  ),
  withRealTimeAlertConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      real_time_alert_configuration+: converted,
    }
  ),
}
