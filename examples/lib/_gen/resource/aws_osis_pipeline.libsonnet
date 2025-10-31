{
  local block = self,
  new(terraformName, maxUnits, minUnits, pipelineConfigurationBody, pipelineName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_osis_pipeline",
          type:: "resource",
          attributes:: ["id", "ingest_endpoint_urls", "max_units", "min_units", "pipeline_arn", "pipeline_configuration_body", "pipeline_name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withMaxUnits(maxUnits)
    + block.withMinUnits(minUnits)
    + block.withPipelineConfigurationBody(pipelineConfigurationBody)
    + block.withPipelineName(pipelineName)
  ),
  withMaxUnits(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_units" expected to be of type "number"';
    {
      max_units: converted,
    }
  ),
  withMinUnits(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_units" expected to be of type "number"';
    {
      min_units: converted,
    }
  ),
  withPipelineConfigurationBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_configuration_body" expected to be of type "string"';
    {
      pipeline_configuration_body: converted,
    }
  ),
  withPipelineName(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_name" expected to be of type "string"';
    {
      pipeline_name: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  buffer_options:: {
    local block = self,
    new(persistentBufferEnabled):: (
      {}
      + block.withPersistentBufferEnabled(persistentBufferEnabled)
    ),
    withPersistentBufferEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"persistent_buffer_enabled" expected to be of type "bool"';
      {
        persistent_buffer_enabled: converted,
      }
    ),
  },
  encryption_at_rest_options:: {
    local block = self,
    new(kmsKeyArn):: (
      {}
      + block.withKmsKeyArn(kmsKeyArn)
    ),
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
  },
  log_publishing_options:: {
    local block = self,
    new():: (
      {}
    ),
    withIsLoggingEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"is_logging_enabled" expected to be of type "bool"';
      {
        is_logging_enabled: converted,
      }
    ),
    cloudwatch_log_destination:: {
      local block = self,
      new(logGroup):: (
        {}
        + block.withLogGroup(logGroup)
      ),
      withLogGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group" expected to be of type "string"';
        {
          log_group: converted,
        }
      ),
    },
    withCloudwatchLogDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_destination: value,
      }
    ),
    withCloudwatchLogDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_log_destination+: converted,
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
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  vpc_options:: {
    local block = self,
    new(subnetIds):: (
      {}
      + block.withSubnetIds(subnetIds)
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
    withVpcEndpointManagement(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_endpoint_management" expected to be of type "string"';
      {
        vpc_endpoint_management: converted,
      }
    ),
  },
  withBufferOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      buffer_options: value,
    }
  ),
  withEncryptionAtRestOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_at_rest_options: value,
    }
  ),
  withLogPublishingOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_publishing_options: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpcOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_options: value,
    }
  ),
  withBufferOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      buffer_options+: converted,
    }
  ),
  withEncryptionAtRestOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_at_rest_options+: converted,
    }
  ),
  withLogPublishingOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_publishing_options+: converted,
    }
  ),
  withVpcOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_options+: converted,
    }
  ),
}
