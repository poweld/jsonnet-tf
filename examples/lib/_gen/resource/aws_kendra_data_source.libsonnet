{
  local block = self,
  new(terraformName, indexId, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kendra_data_source",
          type:: "resource",
          attributes:: ["arn", "created_at", "data_source_id", "description", "error_message", "id", "index_id", "language_code", "name", "region", "role_arn", "schedule", "status", "tags", "tags_all", "type", "updated_at"],
        },
      },
    }
    + block.withIndexId(indexId)
    + block.withName(name)
    + block.withType(type)
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
  withIndexId(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_id" expected to be of type "string"';
    {
      index_id: converted,
    }
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
  withSchedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3_configuration:: {
      local block = self,
      new(bucketName):: (
        {}
        + block.withBucketName(bucketName)
      ),
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      withExclusionPatterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_patterns" expected to be of type "set"';
        {
          exclusion_patterns: converted,
        }
      ),
      withExclusionPatternsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_patterns" expected to be of type "set"';
        {
          exclusion_patterns+: converted,
        }
      ),
      withInclusionPatterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_patterns" expected to be of type "set"';
        {
          inclusion_patterns: converted,
        }
      ),
      withInclusionPatternsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_patterns" expected to be of type "set"';
        {
          inclusion_patterns+: converted,
        }
      ),
      withInclusionPrefixes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_prefixes" expected to be of type "set"';
        {
          inclusion_prefixes: converted,
        }
      ),
      withInclusionPrefixesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_prefixes" expected to be of type "set"';
        {
          inclusion_prefixes+: converted,
        }
      ),
      access_control_list_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withKeyPath(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_path" expected to be of type "string"';
          {
            key_path: converted,
          }
        ),
      },
      documents_metadata_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withS3Prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
          {
            s3_prefix: converted,
          }
        ),
      },
      withAccessControlListConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_control_list_configuration: value,
        }
      ),
      withDocumentsMetadataConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          documents_metadata_configuration: value,
        }
      ),
      withAccessControlListConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_control_list_configuration+: converted,
        }
      ),
      withDocumentsMetadataConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          documents_metadata_configuration+: converted,
        }
      ),
    },
    template_configuration:: {
      local block = self,
      new(template):: (
        {}
        + block.withTemplate(template)
      ),
      withTemplate(value):: (
        local converted = value;
        assert std.isString(converted) : '"template" expected to be of type "string"';
        {
          template: converted,
        }
      ),
    },
    web_crawler_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withCrawlDepth(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"crawl_depth" expected to be of type "number"';
        {
          crawl_depth: converted,
        }
      ),
      withMaxContentSizePerPageInMegaBytes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_content_size_per_page_in_mega_bytes" expected to be of type "number"';
        {
          max_content_size_per_page_in_mega_bytes: converted,
        }
      ),
      withMaxLinksPerPage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_links_per_page" expected to be of type "number"';
        {
          max_links_per_page: converted,
        }
      ),
      withMaxUrlsPerMinuteCrawlRate(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_urls_per_minute_crawl_rate" expected to be of type "number"';
        {
          max_urls_per_minute_crawl_rate: converted,
        }
      ),
      withUrlExclusionPatterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"url_exclusion_patterns" expected to be of type "set"';
        {
          url_exclusion_patterns: converted,
        }
      ),
      withUrlExclusionPatternsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"url_exclusion_patterns" expected to be of type "set"';
        {
          url_exclusion_patterns+: converted,
        }
      ),
      withUrlInclusionPatterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"url_inclusion_patterns" expected to be of type "set"';
        {
          url_inclusion_patterns: converted,
        }
      ),
      withUrlInclusionPatternsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"url_inclusion_patterns" expected to be of type "set"';
        {
          url_inclusion_patterns+: converted,
        }
      ),
      authentication_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        basic_authentication:: {
          local block = self,
          new(credentials, host, port):: (
            {}
            + block.withCredentials(credentials)
            + block.withHost(host)
            + block.withPort(port)
          ),
          withCredentials(value):: (
            local converted = value;
            assert std.isString(converted) : '"credentials" expected to be of type "string"';
            {
              credentials: converted,
            }
          ),
          withHost(value):: (
            local converted = value;
            assert std.isString(converted) : '"host" expected to be of type "string"';
            {
              host: converted,
            }
          ),
          withPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
        },
        withBasicAuthentication(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            basic_authentication: value,
          }
        ),
        withBasicAuthenticationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            basic_authentication+: converted,
          }
        ),
      },
      proxy_configuration:: {
        local block = self,
        new(host, port):: (
          {}
          + block.withHost(host)
          + block.withPort(port)
        ),
        withCredentials(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials" expected to be of type "string"';
          {
            credentials: converted,
          }
        ),
        withHost(value):: (
          local converted = value;
          assert std.isString(converted) : '"host" expected to be of type "string"';
          {
            host: converted,
          }
        ),
        withPort(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
      },
      urls:: {
        local block = self,
        new():: (
          {}
        ),
        seed_url_configuration:: {
          local block = self,
          new(seedUrls):: (
            {}
            + block.withSeedUrls(seedUrls)
          ),
          withSeedUrls(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"seed_urls" expected to be of type "set"';
            {
              seed_urls: converted,
            }
          ),
          withSeedUrlsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"seed_urls" expected to be of type "set"';
            {
              seed_urls+: converted,
            }
          ),
          withWebCrawlerMode(value):: (
            local converted = value;
            assert std.isString(converted) : '"web_crawler_mode" expected to be of type "string"';
            {
              web_crawler_mode: converted,
            }
          ),
        },
        site_maps_configuration:: {
          local block = self,
          new(siteMaps):: (
            {}
            + block.withSiteMaps(siteMaps)
          ),
          withSiteMaps(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"site_maps" expected to be of type "set"';
            {
              site_maps: converted,
            }
          ),
          withSiteMapsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"site_maps" expected to be of type "set"';
            {
              site_maps+: converted,
            }
          ),
        },
        withSeedUrlConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            seed_url_configuration: value,
          }
        ),
        withSiteMapsConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            site_maps_configuration: value,
          }
        ),
        withSeedUrlConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            seed_url_configuration+: converted,
          }
        ),
        withSiteMapsConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            site_maps_configuration+: converted,
          }
        ),
      },
      withAuthenticationConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authentication_configuration: value,
        }
      ),
      withProxyConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          proxy_configuration: value,
        }
      ),
      withUrls(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          urls: value,
        }
      ),
      withAuthenticationConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authentication_configuration+: converted,
        }
      ),
      withProxyConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          proxy_configuration+: converted,
        }
      ),
      withUrlsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          urls+: converted,
        }
      ),
    },
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withTemplateConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_configuration: value,
      }
    ),
    withWebCrawlerConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        web_crawler_configuration: value,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    withTemplateConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_configuration+: converted,
      }
    ),
    withWebCrawlerConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        web_crawler_configuration+: converted,
      }
    ),
  },
  custom_document_enrichment_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    inline_configurations:: {
      local block = self,
      new():: (
        {}
      ),
      withDocumentContentDeletion(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"document_content_deletion" expected to be of type "bool"';
        {
          document_content_deletion: converted,
        }
      ),
      condition:: {
        local block = self,
        new(conditionDocumentAttributeKey, operator):: (
          {}
          + block.withConditionDocumentAttributeKey(conditionDocumentAttributeKey)
          + block.withOperator(operator)
        ),
        withConditionDocumentAttributeKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"condition_document_attribute_key" expected to be of type "string"';
          {
            condition_document_attribute_key: converted,
          }
        ),
        withOperator(value):: (
          local converted = value;
          assert std.isString(converted) : '"operator" expected to be of type "string"';
          {
            operator: converted,
          }
        ),
        condition_on_value:: {
          local block = self,
          new():: (
            {}
          ),
          withDateValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"date_value" expected to be of type "string"';
            {
              date_value: converted,
            }
          ),
          withLongValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"long_value" expected to be of type "number"';
            {
              long_value: converted,
            }
          ),
          withStringListValue(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value: converted,
            }
          ),
          withStringListValueMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value+: converted,
            }
          ),
          withStringValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"string_value" expected to be of type "string"';
            {
              string_value: converted,
            }
          ),
        },
        withConditionOnValue(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value: value,
          }
        ),
        withConditionOnValueMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value+: converted,
          }
        ),
      },
      target:: {
        local block = self,
        new():: (
          {}
        ),
        withTargetDocumentAttributeKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"target_document_attribute_key" expected to be of type "string"';
          {
            target_document_attribute_key: converted,
          }
        ),
        withTargetDocumentAttributeValueDeletion(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"target_document_attribute_value_deletion" expected to be of type "bool"';
          {
            target_document_attribute_value_deletion: converted,
          }
        ),
        target_document_attribute_value:: {
          local block = self,
          new():: (
            {}
          ),
          withDateValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"date_value" expected to be of type "string"';
            {
              date_value: converted,
            }
          ),
          withLongValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"long_value" expected to be of type "number"';
            {
              long_value: converted,
            }
          ),
          withStringListValue(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value: converted,
            }
          ),
          withStringListValueMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value+: converted,
            }
          ),
          withStringValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"string_value" expected to be of type "string"';
            {
              string_value: converted,
            }
          ),
        },
        withTargetDocumentAttributeValue(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target_document_attribute_value: value,
          }
        ),
        withTargetDocumentAttributeValueMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target_document_attribute_value+: converted,
          }
        ),
      },
      withCondition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition: value,
        }
      ),
      withTarget(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target: value,
        }
      ),
      withConditionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition+: converted,
        }
      ),
      withTargetMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target+: converted,
        }
      ),
    },
    post_extraction_hook_configuration:: {
      local block = self,
      new(lambdaArn, s3Bucket):: (
        {}
        + block.withLambdaArn(lambdaArn)
        + block.withS3Bucket(s3Bucket)
      ),
      withLambdaArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      withS3Bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
        {
          s3_bucket: converted,
        }
      ),
      invocation_condition:: {
        local block = self,
        new(conditionDocumentAttributeKey, operator):: (
          {}
          + block.withConditionDocumentAttributeKey(conditionDocumentAttributeKey)
          + block.withOperator(operator)
        ),
        withConditionDocumentAttributeKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"condition_document_attribute_key" expected to be of type "string"';
          {
            condition_document_attribute_key: converted,
          }
        ),
        withOperator(value):: (
          local converted = value;
          assert std.isString(converted) : '"operator" expected to be of type "string"';
          {
            operator: converted,
          }
        ),
        condition_on_value:: {
          local block = self,
          new():: (
            {}
          ),
          withDateValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"date_value" expected to be of type "string"';
            {
              date_value: converted,
            }
          ),
          withLongValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"long_value" expected to be of type "number"';
            {
              long_value: converted,
            }
          ),
          withStringListValue(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value: converted,
            }
          ),
          withStringListValueMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value+: converted,
            }
          ),
          withStringValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"string_value" expected to be of type "string"';
            {
              string_value: converted,
            }
          ),
        },
        withConditionOnValue(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value: value,
          }
        ),
        withConditionOnValueMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value+: converted,
          }
        ),
      },
      withInvocationCondition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          invocation_condition: value,
        }
      ),
      withInvocationConditionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          invocation_condition+: converted,
        }
      ),
    },
    pre_extraction_hook_configuration:: {
      local block = self,
      new(lambdaArn, s3Bucket):: (
        {}
        + block.withLambdaArn(lambdaArn)
        + block.withS3Bucket(s3Bucket)
      ),
      withLambdaArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      withS3Bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
        {
          s3_bucket: converted,
        }
      ),
      invocation_condition:: {
        local block = self,
        new(conditionDocumentAttributeKey, operator):: (
          {}
          + block.withConditionDocumentAttributeKey(conditionDocumentAttributeKey)
          + block.withOperator(operator)
        ),
        withConditionDocumentAttributeKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"condition_document_attribute_key" expected to be of type "string"';
          {
            condition_document_attribute_key: converted,
          }
        ),
        withOperator(value):: (
          local converted = value;
          assert std.isString(converted) : '"operator" expected to be of type "string"';
          {
            operator: converted,
          }
        ),
        condition_on_value:: {
          local block = self,
          new():: (
            {}
          ),
          withDateValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"date_value" expected to be of type "string"';
            {
              date_value: converted,
            }
          ),
          withLongValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"long_value" expected to be of type "number"';
            {
              long_value: converted,
            }
          ),
          withStringListValue(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value: converted,
            }
          ),
          withStringListValueMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"string_list_value" expected to be of type "set"';
            {
              string_list_value+: converted,
            }
          ),
          withStringValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"string_value" expected to be of type "string"';
            {
              string_value: converted,
            }
          ),
        },
        withConditionOnValue(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value: value,
          }
        ),
        withConditionOnValueMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition_on_value+: converted,
          }
        ),
      },
      withInvocationCondition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          invocation_condition: value,
        }
      ),
      withInvocationConditionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          invocation_condition+: converted,
        }
      ),
    },
    withInlineConfigurations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inline_configurations: value,
      }
    ),
    withPostExtractionHookConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        post_extraction_hook_configuration: value,
      }
    ),
    withPreExtractionHookConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pre_extraction_hook_configuration: value,
      }
    ),
    withInlineConfigurationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inline_configurations+: converted,
      }
    ),
    withPostExtractionHookConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        post_extraction_hook_configuration+: converted,
      }
    ),
    withPreExtractionHookConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pre_extraction_hook_configuration+: converted,
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
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withCustomDocumentEnrichmentConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_document_enrichment_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  withCustomDocumentEnrichmentConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_document_enrichment_configuration+: converted,
    }
  ),
}
