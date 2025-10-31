{
  local block = self,
  new(terraformName, knowledgeBaseId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrockagent_data_source",
          type:: "resource",
          attributes:: ["data_deletion_policy", "data_source_id", "description", "id", "knowledge_base_id", "name", "region"],
        },
      },
    }
    + block.withKnowledgeBaseId(knowledgeBaseId)
    + block.withName(name)
  ),
  withDataDeletionPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_deletion_policy" expected to be of type "string"';
    {
      data_deletion_policy: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withKnowledgeBaseId(value):: (
    local converted = value;
    assert std.isString(converted) : '"knowledge_base_id" expected to be of type "string"';
    {
      knowledge_base_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  data_source_configuration:: {
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
    confluence_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      crawler_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        filter_configuration:: {
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
          pattern_object_filter:: {
            local block = self,
            new():: (
              {}
            ),
            filters:: {
              local block = self,
              new(objectType):: (
                {}
                + block.withObjectType(objectType)
              ),
              withExclusionFilters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters: converted,
                }
              ),
              withExclusionFiltersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters+: converted,
                }
              ),
              withInclusionFilters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters: converted,
                }
              ),
              withInclusionFiltersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters+: converted,
                }
              ),
              withObjectType(value):: (
                local converted = value;
                assert std.isString(converted) : '"object_type" expected to be of type "string"';
                {
                  object_type: converted,
                }
              ),
            },
            withFilters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters: value,
              }
            ),
            withFiltersMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters+: converted,
              }
            ),
          },
          withPatternObjectFilter(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter: value,
            }
          ),
          withPatternObjectFilterMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter+: converted,
            }
          ),
        },
        withFilterConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration: value,
          }
        ),
        withFilterConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration+: converted,
          }
        ),
      },
      source_configuration:: {
        local block = self,
        new(authType, credentialsSecretArn, hostType, hostUrl):: (
          {}
          + block.withAuthType(authType)
          + block.withCredentialsSecretArn(credentialsSecretArn)
          + block.withHostType(hostType)
          + block.withHostUrl(hostUrl)
        ),
        withAuthType(value):: (
          local converted = value;
          assert std.isString(converted) : '"auth_type" expected to be of type "string"';
          {
            auth_type: converted,
          }
        ),
        withCredentialsSecretArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
          {
            credentials_secret_arn: converted,
          }
        ),
        withHostType(value):: (
          local converted = value;
          assert std.isString(converted) : '"host_type" expected to be of type "string"';
          {
            host_type: converted,
          }
        ),
        withHostUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"host_url" expected to be of type "string"';
          {
            host_url: converted,
          }
        ),
      },
      withCrawlerConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration: value,
        }
      ),
      withSourceConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration: value,
        }
      ),
      withCrawlerConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration+: converted,
        }
      ),
      withSourceConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucketArn):: (
        {}
        + block.withBucketArn(bucketArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBucketOwnerAccountId(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner_account_id" expected to be of type "string"';
        {
          bucket_owner_account_id: converted,
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
    },
    salesforce_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      crawler_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        filter_configuration:: {
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
          pattern_object_filter:: {
            local block = self,
            new():: (
              {}
            ),
            filters:: {
              local block = self,
              new(objectType):: (
                {}
                + block.withObjectType(objectType)
              ),
              withExclusionFilters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters: converted,
                }
              ),
              withExclusionFiltersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters+: converted,
                }
              ),
              withInclusionFilters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters: converted,
                }
              ),
              withInclusionFiltersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters+: converted,
                }
              ),
              withObjectType(value):: (
                local converted = value;
                assert std.isString(converted) : '"object_type" expected to be of type "string"';
                {
                  object_type: converted,
                }
              ),
            },
            withFilters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters: value,
              }
            ),
            withFiltersMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters+: converted,
              }
            ),
          },
          withPatternObjectFilter(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter: value,
            }
          ),
          withPatternObjectFilterMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter+: converted,
            }
          ),
        },
        withFilterConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration: value,
          }
        ),
        withFilterConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration+: converted,
          }
        ),
      },
      source_configuration:: {
        local block = self,
        new(authType, credentialsSecretArn, hostUrl):: (
          {}
          + block.withAuthType(authType)
          + block.withCredentialsSecretArn(credentialsSecretArn)
          + block.withHostUrl(hostUrl)
        ),
        withAuthType(value):: (
          local converted = value;
          assert std.isString(converted) : '"auth_type" expected to be of type "string"';
          {
            auth_type: converted,
          }
        ),
        withCredentialsSecretArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
          {
            credentials_secret_arn: converted,
          }
        ),
        withHostUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"host_url" expected to be of type "string"';
          {
            host_url: converted,
          }
        ),
      },
      withCrawlerConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration: value,
        }
      ),
      withSourceConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration: value,
        }
      ),
      withCrawlerConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration+: converted,
        }
      ),
      withSourceConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration+: converted,
        }
      ),
    },
    share_point_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      crawler_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        filter_configuration:: {
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
          pattern_object_filter:: {
            local block = self,
            new():: (
              {}
            ),
            filters:: {
              local block = self,
              new(objectType):: (
                {}
                + block.withObjectType(objectType)
              ),
              withExclusionFilters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters: converted,
                }
              ),
              withExclusionFiltersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
                {
                  exclusion_filters+: converted,
                }
              ),
              withInclusionFilters(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters: converted,
                }
              ),
              withInclusionFiltersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
                {
                  inclusion_filters+: converted,
                }
              ),
              withObjectType(value):: (
                local converted = value;
                assert std.isString(converted) : '"object_type" expected to be of type "string"';
                {
                  object_type: converted,
                }
              ),
            },
            withFilters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters: value,
              }
            ),
            withFiltersMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                filters+: converted,
              }
            ),
          },
          withPatternObjectFilter(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter: value,
            }
          ),
          withPatternObjectFilterMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              pattern_object_filter+: converted,
            }
          ),
        },
        withFilterConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration: value,
          }
        ),
        withFilterConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            filter_configuration+: converted,
          }
        ),
      },
      source_configuration:: {
        local block = self,
        new(authType, credentialsSecretArn, domain, hostType, siteUrls):: (
          {}
          + block.withAuthType(authType)
          + block.withCredentialsSecretArn(credentialsSecretArn)
          + block.withDomain(domain)
          + block.withHostType(hostType)
          + block.withSiteUrls(siteUrls)
        ),
        withAuthType(value):: (
          local converted = value;
          assert std.isString(converted) : '"auth_type" expected to be of type "string"';
          {
            auth_type: converted,
          }
        ),
        withCredentialsSecretArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
          {
            credentials_secret_arn: converted,
          }
        ),
        withDomain(value):: (
          local converted = value;
          assert std.isString(converted) : '"domain" expected to be of type "string"';
          {
            domain: converted,
          }
        ),
        withHostType(value):: (
          local converted = value;
          assert std.isString(converted) : '"host_type" expected to be of type "string"';
          {
            host_type: converted,
          }
        ),
        withSiteUrls(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"site_urls" expected to be of type "set"';
          {
            site_urls: converted,
          }
        ),
        withSiteUrlsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"site_urls" expected to be of type "set"';
          {
            site_urls+: converted,
          }
        ),
        withTenantId(value):: (
          local converted = value;
          assert std.isString(converted) : '"tenant_id" expected to be of type "string"';
          {
            tenant_id: converted,
          }
        ),
      },
      withCrawlerConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration: value,
        }
      ),
      withSourceConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration: value,
        }
      ),
      withCrawlerConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration+: converted,
        }
      ),
      withSourceConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration+: converted,
        }
      ),
    },
    web_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      crawler_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withExclusionFilters(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
          {
            exclusion_filters: converted,
          }
        ),
        withExclusionFiltersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclusion_filters" expected to be of type "set"';
          {
            exclusion_filters+: converted,
          }
        ),
        withInclusionFilters(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
          {
            inclusion_filters: converted,
          }
        ),
        withInclusionFiltersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inclusion_filters" expected to be of type "set"';
          {
            inclusion_filters+: converted,
          }
        ),
        withScope(value):: (
          local converted = value;
          assert std.isString(converted) : '"scope" expected to be of type "string"';
          {
            scope: converted,
          }
        ),
        withUserAgent(value):: (
          local converted = value;
          assert std.isString(converted) : '"user_agent" expected to be of type "string"';
          {
            user_agent: converted,
          }
        ),
        crawler_limits:: {
          local block = self,
          new():: (
            {}
          ),
          withMaxPages(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_pages" expected to be of type "number"';
            {
              max_pages: converted,
            }
          ),
          withRateLimit(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"rate_limit" expected to be of type "number"';
            {
              rate_limit: converted,
            }
          ),
        },
        withCrawlerLimits(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            crawler_limits: value,
          }
        ),
        withCrawlerLimitsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            crawler_limits+: converted,
          }
        ),
      },
      source_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        url_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          seed_urls:: {
            local block = self,
            new():: (
              {}
            ),
            withUrl(value):: (
              local converted = value;
              assert std.isString(converted) : '"url" expected to be of type "string"';
              {
                url: converted,
              }
            ),
          },
          withSeedUrls(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              seed_urls: value,
            }
          ),
          withSeedUrlsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              seed_urls+: converted,
            }
          ),
        },
        withUrlConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            url_configuration: value,
          }
        ),
        withUrlConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            url_configuration+: converted,
          }
        ),
      },
      withCrawlerConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration: value,
        }
      ),
      withSourceConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration: value,
        }
      ),
      withCrawlerConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          crawler_configuration+: converted,
        }
      ),
      withSourceConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_configuration+: converted,
        }
      ),
    },
    withConfluenceConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confluence_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withSalesforceConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        salesforce_configuration: value,
      }
    ),
    withSharePointConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        share_point_configuration: value,
      }
    ),
    withWebConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        web_configuration: value,
      }
    ),
    withConfluenceConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confluence_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    withSalesforceConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        salesforce_configuration+: converted,
      }
    ),
    withSharePointConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        share_point_configuration+: converted,
      }
    ),
    withWebConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        web_configuration+: converted,
      }
    ),
  },
  server_side_encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
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
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  vector_ingestion_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    chunking_configuration:: {
      local block = self,
      new(chunkingStrategy):: (
        {}
        + block.withChunkingStrategy(chunkingStrategy)
      ),
      withChunkingStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"chunking_strategy" expected to be of type "string"';
        {
          chunking_strategy: converted,
        }
      ),
      fixed_size_chunking_configuration:: {
        local block = self,
        new(maxTokens, overlapPercentage):: (
          {}
          + block.withMaxTokens(maxTokens)
          + block.withOverlapPercentage(overlapPercentage)
        ),
        withMaxTokens(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_tokens" expected to be of type "number"';
          {
            max_tokens: converted,
          }
        ),
        withOverlapPercentage(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"overlap_percentage" expected to be of type "number"';
          {
            overlap_percentage: converted,
          }
        ),
      },
      hierarchical_chunking_configuration:: {
        local block = self,
        new(overlapTokens):: (
          {}
          + block.withOverlapTokens(overlapTokens)
        ),
        withOverlapTokens(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"overlap_tokens" expected to be of type "number"';
          {
            overlap_tokens: converted,
          }
        ),
        level_configuration:: {
          local block = self,
          new(maxTokens):: (
            {}
            + block.withMaxTokens(maxTokens)
          ),
          withMaxTokens(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_tokens" expected to be of type "number"';
            {
              max_tokens: converted,
            }
          ),
        },
        withLevelConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            level_configuration: value,
          }
        ),
        withLevelConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            level_configuration+: converted,
          }
        ),
      },
      semantic_chunking_configuration:: {
        local block = self,
        new(breakpointPercentileThreshold, bufferSize, maxToken):: (
          {}
          + block.withBreakpointPercentileThreshold(breakpointPercentileThreshold)
          + block.withBufferSize(bufferSize)
          + block.withMaxToken(maxToken)
        ),
        withBreakpointPercentileThreshold(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"breakpoint_percentile_threshold" expected to be of type "number"';
          {
            breakpoint_percentile_threshold: converted,
          }
        ),
        withBufferSize(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"buffer_size" expected to be of type "number"';
          {
            buffer_size: converted,
          }
        ),
        withMaxToken(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_token" expected to be of type "number"';
          {
            max_token: converted,
          }
        ),
      },
      withFixedSizeChunkingConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          fixed_size_chunking_configuration: value,
        }
      ),
      withHierarchicalChunkingConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hierarchical_chunking_configuration: value,
        }
      ),
      withSemanticChunkingConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          semantic_chunking_configuration: value,
        }
      ),
      withFixedSizeChunkingConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          fixed_size_chunking_configuration+: converted,
        }
      ),
      withHierarchicalChunkingConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hierarchical_chunking_configuration+: converted,
        }
      ),
      withSemanticChunkingConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          semantic_chunking_configuration+: converted,
        }
      ),
    },
    custom_transformation_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      intermediate_storage:: {
        local block = self,
        new():: (
          {}
        ),
        s3_location:: {
          local block = self,
          new(uri):: (
            {}
            + block.withUri(uri)
          ),
          withUri(value):: (
            local converted = value;
            assert std.isString(converted) : '"uri" expected to be of type "string"';
            {
              uri: converted,
            }
          ),
        },
        withS3Location(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_location: value,
          }
        ),
        withS3LocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_location+: converted,
          }
        ),
      },
      transformation:: {
        local block = self,
        new(stepToApply):: (
          {}
          + block.withStepToApply(stepToApply)
        ),
        withStepToApply(value):: (
          local converted = value;
          assert std.isString(converted) : '"step_to_apply" expected to be of type "string"';
          {
            step_to_apply: converted,
          }
        ),
        transformation_function:: {
          local block = self,
          new():: (
            {}
          ),
          transformation_lambda_configuration:: {
            local block = self,
            new(lambdaArn):: (
              {}
              + block.withLambdaArn(lambdaArn)
            ),
            withLambdaArn(value):: (
              local converted = value;
              assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
              {
                lambda_arn: converted,
              }
            ),
          },
          withTransformationLambdaConfiguration(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              transformation_lambda_configuration: value,
            }
          ),
          withTransformationLambdaConfigurationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              transformation_lambda_configuration+: converted,
            }
          ),
        },
        withTransformationFunction(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            transformation_function: value,
          }
        ),
        withTransformationFunctionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            transformation_function+: converted,
          }
        ),
      },
      withIntermediateStorage(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intermediate_storage: value,
        }
      ),
      withTransformation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          transformation: value,
        }
      ),
      withIntermediateStorageMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intermediate_storage+: converted,
        }
      ),
      withTransformationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          transformation+: converted,
        }
      ),
    },
    parsing_configuration:: {
      local block = self,
      new(parsingStrategy):: (
        {}
        + block.withParsingStrategy(parsingStrategy)
      ),
      withParsingStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"parsing_strategy" expected to be of type "string"';
        {
          parsing_strategy: converted,
        }
      ),
      bedrock_foundation_model_configuration:: {
        local block = self,
        new(modelArn):: (
          {}
          + block.withModelArn(modelArn)
        ),
        withModelArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"model_arn" expected to be of type "string"';
          {
            model_arn: converted,
          }
        ),
        parsing_prompt:: {
          local block = self,
          new(parsingPromptString):: (
            {}
            + block.withParsingPromptString(parsingPromptString)
          ),
          withParsingPromptString(value):: (
            local converted = value;
            assert std.isString(converted) : '"parsing_prompt_string" expected to be of type "string"';
            {
              parsing_prompt_string: converted,
            }
          ),
        },
        withParsingPrompt(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parsing_prompt: value,
          }
        ),
        withParsingPromptMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parsing_prompt+: converted,
          }
        ),
      },
      withBedrockFoundationModelConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          bedrock_foundation_model_configuration: value,
        }
      ),
      withBedrockFoundationModelConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          bedrock_foundation_model_configuration+: converted,
        }
      ),
    },
    withChunkingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        chunking_configuration: value,
      }
    ),
    withCustomTransformationConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_transformation_configuration: value,
      }
    ),
    withParsingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parsing_configuration: value,
      }
    ),
    withChunkingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        chunking_configuration+: converted,
      }
    ),
    withCustomTransformationConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_transformation_configuration+: converted,
      }
    ),
    withParsingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parsing_configuration+: converted,
      }
    ),
  },
  withDataSourceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_source_configuration: value,
    }
  ),
  withServerSideEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVectorIngestionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vector_ingestion_configuration: value,
    }
  ),
  withDataSourceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_source_configuration+: converted,
    }
  ),
  withServerSideEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration+: converted,
    }
  ),
  withVectorIngestionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vector_ingestion_configuration+: converted,
    }
  ),
}
