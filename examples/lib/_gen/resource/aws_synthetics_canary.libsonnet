{
  local block = self,
  new(terraformName, artifactS3Location, executionRoleArn, handler, name, runtimeVersion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_synthetics_canary",
          type:: "resource",
          attributes:: ["arn", "artifact_s3_location", "delete_lambda", "engine_arn", "execution_role_arn", "failure_retention_period", "handler", "id", "name", "region", "runtime_version", "s3_bucket", "s3_key", "s3_version", "source_location_arn", "start_canary", "status", "success_retention_period", "tags", "tags_all", "timeline", "zip_file"],
        },
      },
    }
    + block.withArtifactS3Location(artifactS3Location)
    + block.withExecutionRoleArn(executionRoleArn)
    + block.withHandler(handler)
    + block.withName(name)
    + block.withRuntimeVersion(runtimeVersion)
  ),
  withArtifactS3Location(value):: (
    local converted = value;
    assert std.isString(converted) : '"artifact_s3_location" expected to be of type "string"';
    {
      artifact_s3_location: converted,
    }
  ),
  withDeleteLambda(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_lambda" expected to be of type "bool"';
    {
      delete_lambda: converted,
    }
  ),
  withExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  withFailureRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"failure_retention_period" expected to be of type "number"';
    {
      failure_retention_period: converted,
    }
  ),
  withHandler(value):: (
    local converted = value;
    assert std.isString(converted) : '"handler" expected to be of type "string"';
    {
      handler: converted,
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
  withRuntimeVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime_version" expected to be of type "string"';
    {
      runtime_version: converted,
    }
  ),
  withS3Bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
    {
      s3_bucket: converted,
    }
  ),
  withS3Key(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key" expected to be of type "string"';
    {
      s3_key: converted,
    }
  ),
  withS3Version(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_version" expected to be of type "string"';
    {
      s3_version: converted,
    }
  ),
  withStartCanary(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_canary" expected to be of type "bool"';
    {
      start_canary: converted,
    }
  ),
  withSuccessRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"success_retention_period" expected to be of type "number"';
    {
      success_retention_period: converted,
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
  withZipFile(value):: (
    local converted = value;
    assert std.isString(converted) : '"zip_file" expected to be of type "string"';
    {
      zip_file: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  artifact_config:: {
    local block = self,
    new():: (
      {}
    ),
    s3_encryption:: {
      local block = self,
      new():: (
        {}
      ),
      withEncryptionMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"encryption_mode" expected to be of type "string"';
        {
          encryption_mode: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
    },
    withS3Encryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_encryption: value,
      }
    ),
    withS3EncryptionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_encryption+: converted,
      }
    ),
  },
  run_config:: {
    local block = self,
    new():: (
      {}
    ),
    withActiveTracing(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"active_tracing" expected to be of type "bool"';
      {
        active_tracing: converted,
      }
    ),
    withEnvironmentVariables(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment_variables" expected to be of type "map"';
      {
        environment_variables: converted,
      }
    ),
    withEphemeralStorage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ephemeral_storage" expected to be of type "number"';
      {
        ephemeral_storage: converted,
      }
    ),
    withMemoryInMb(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory_in_mb" expected to be of type "number"';
      {
        memory_in_mb: converted,
      }
    ),
    withTimeoutInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
      {
        timeout_in_seconds: converted,
      }
    ),
  },
  schedule:: {
    local block = self,
    new(expression):: (
      {}
      + block.withExpression(expression)
    ),
    withDurationInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"duration_in_seconds" expected to be of type "number"';
      {
        duration_in_seconds: converted,
      }
    ),
    withExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    retry_config:: {
      local block = self,
      new(maxRetries):: (
        {}
        + block.withMaxRetries(maxRetries)
      ),
      withMaxRetries(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
        {
          max_retries: converted,
        }
      ),
    },
    withRetryConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retry_config: value,
      }
    ),
    withRetryConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retry_config+: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new():: (
      {}
    ),
    withIpv6AllowedForDualStack(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ipv6_allowed_for_dual_stack" expected to be of type "bool"';
      {
        ipv6_allowed_for_dual_stack: converted,
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
  withArtifactConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifact_config: value,
    }
  ),
  withRunConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      run_config: value,
    }
  ),
  withSchedule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withArtifactConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifact_config+: converted,
    }
  ),
  withRunConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      run_config+: converted,
    }
  ),
  withScheduleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
