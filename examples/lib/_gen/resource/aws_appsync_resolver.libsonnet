{
  local block = self,
  new(terraformName, apiId, field, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appsync_resolver",
          type:: "resource",
          attributes:: ["api_id", "arn", "code", "data_source", "field", "id", "kind", "max_batch_size", "region", "request_template", "response_template", "type"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withField(field)
    + block.withType(type)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"code" expected to be of type "string"';
    {
      code: converted,
    }
  ),
  withDataSource(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_source" expected to be of type "string"';
    {
      data_source: converted,
    }
  ),
  withField(value):: (
    local converted = value;
    assert std.isString(converted) : '"field" expected to be of type "string"';
    {
      field: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKind(value):: (
    local converted = value;
    assert std.isString(converted) : '"kind" expected to be of type "string"';
    {
      kind: converted,
    }
  ),
  withMaxBatchSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_batch_size" expected to be of type "number"';
    {
      max_batch_size: converted,
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
  withRequestTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_template" expected to be of type "string"';
    {
      request_template: converted,
    }
  ),
  withResponseTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_template" expected to be of type "string"';
    {
      response_template: converted,
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
  caching_config:: {
    local block = self,
    new():: (
      {}
    ),
    withCachingKeys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"caching_keys" expected to be of type "set"';
      {
        caching_keys: converted,
      }
    ),
    withCachingKeysMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"caching_keys" expected to be of type "set"';
      {
        caching_keys+: converted,
      }
    ),
    withTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ttl" expected to be of type "number"';
      {
        ttl: converted,
      }
    ),
  },
  pipeline_config:: {
    local block = self,
    new():: (
      {}
    ),
    withFunctions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"functions" expected to be of type "list"';
      {
        functions: converted,
      }
    ),
    withFunctionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"functions" expected to be of type "list"';
      {
        functions+: converted,
      }
    ),
  },
  runtime:: {
    local block = self,
    new(name, runtimeVersion):: (
      {}
      + block.withName(name)
      + block.withRuntimeVersion(runtimeVersion)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withRuntimeVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"runtime_version" expected to be of type "string"';
      {
        runtime_version: converted,
      }
    ),
  },
  sync_config:: {
    local block = self,
    new():: (
      {}
    ),
    withConflictDetection(value):: (
      local converted = value;
      assert std.isString(converted) : '"conflict_detection" expected to be of type "string"';
      {
        conflict_detection: converted,
      }
    ),
    withConflictHandler(value):: (
      local converted = value;
      assert std.isString(converted) : '"conflict_handler" expected to be of type "string"';
      {
        conflict_handler: converted,
      }
    ),
    lambda_conflict_handler_config:: {
      local block = self,
      new():: (
        {}
      ),
      withLambdaConflictHandlerArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_conflict_handler_arn" expected to be of type "string"';
        {
          lambda_conflict_handler_arn: converted,
        }
      ),
    },
    withLambdaConflictHandlerConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_conflict_handler_config: value,
      }
    ),
    withLambdaConflictHandlerConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_conflict_handler_config+: converted,
      }
    ),
  },
  withCachingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      caching_config: value,
    }
  ),
  withPipelineConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_config: value,
    }
  ),
  withRuntime(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime: value,
    }
  ),
  withSyncConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sync_config: value,
    }
  ),
  withCachingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      caching_config+: converted,
    }
  ),
  withPipelineConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_config+: converted,
    }
  ),
  withRuntimeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime+: converted,
    }
  ),
  withSyncConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sync_config+: converted,
    }
  ),
}
