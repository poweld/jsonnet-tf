{
  local block = self,
  new(terraformName, apiId, dataSource, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appsync_function",
          type:: "resource",
          attributes:: ["api_id", "arn", "code", "data_source", "description", "function_id", "function_version", "id", "max_batch_size", "name", "region", "request_mapping_template", "response_mapping_template"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withDataSource(dataSource)
    + block.withName(name)
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
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFunctionVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_version" expected to be of type "string"';
    {
      function_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxBatchSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_batch_size" expected to be of type "number"';
    {
      max_batch_size: converted,
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
  withRequestMappingTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_mapping_template" expected to be of type "string"';
    {
      request_mapping_template: converted,
    }
  ),
  withResponseMappingTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_mapping_template" expected to be of type "string"';
    {
      response_mapping_template: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
