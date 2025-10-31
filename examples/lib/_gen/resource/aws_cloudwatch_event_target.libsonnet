{
  local block = self,
  new(terraformName, arn, rule):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_event_target",
          type:: "resource",
          attributes:: ["arn", "event_bus_name", "force_destroy", "id", "input", "input_path", "region", "role_arn", "rule", "target_id"],
        },
      },
    }
    + block.withArn(arn)
    + block.withRule(rule)
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  withEventBusName(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_bus_name" expected to be of type "string"';
    {
      event_bus_name: converted,
    }
  ),
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInput(value):: (
    local converted = value;
    assert std.isString(converted) : '"input" expected to be of type "string"';
    {
      input: converted,
    }
  ),
  withInputPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_path" expected to be of type "string"';
    {
      input_path: converted,
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
  withRule(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule" expected to be of type "string"';
    {
      rule: converted,
    }
  ),
  withTargetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_id" expected to be of type "string"';
    {
      target_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  appsync_target:: {
    local block = self,
    new():: (
      {}
    ),
    withGraphqlOperation(value):: (
      local converted = value;
      assert std.isString(converted) : '"graphql_operation" expected to be of type "string"';
      {
        graphql_operation: converted,
      }
    ),
  },
  batch_target:: {
    local block = self,
    new(jobDefinition, jobName):: (
      {}
      + block.withJobDefinition(jobDefinition)
      + block.withJobName(jobName)
    ),
    withArraySize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"array_size" expected to be of type "number"';
      {
        array_size: converted,
      }
    ),
    withJobAttempts(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"job_attempts" expected to be of type "number"';
      {
        job_attempts: converted,
      }
    ),
    withJobDefinition(value):: (
      local converted = value;
      assert std.isString(converted) : '"job_definition" expected to be of type "string"';
      {
        job_definition: converted,
      }
    ),
    withJobName(value):: (
      local converted = value;
      assert std.isString(converted) : '"job_name" expected to be of type "string"';
      {
        job_name: converted,
      }
    ),
  },
  dead_letter_config:: {
    local block = self,
    new():: (
      {}
    ),
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
  },
  ecs_target:: {
    local block = self,
    new(taskDefinitionArn):: (
      {}
      + block.withTaskDefinitionArn(taskDefinitionArn)
    ),
    withEnableEcsManagedTags(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_ecs_managed_tags" expected to be of type "bool"';
      {
        enable_ecs_managed_tags: converted,
      }
    ),
    withEnableExecuteCommand(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_execute_command" expected to be of type "bool"';
      {
        enable_execute_command: converted,
      }
    ),
    withGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"group" expected to be of type "string"';
      {
        group: converted,
      }
    ),
    withLaunchType(value):: (
      local converted = value;
      assert std.isString(converted) : '"launch_type" expected to be of type "string"';
      {
        launch_type: converted,
      }
    ),
    withPlatformVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"platform_version" expected to be of type "string"';
      {
        platform_version: converted,
      }
    ),
    withPropagateTags(value):: (
      local converted = value;
      assert std.isString(converted) : '"propagate_tags" expected to be of type "string"';
      {
        propagate_tags: converted,
      }
    ),
    withTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    withTaskCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"task_count" expected to be of type "number"';
      {
        task_count: converted,
      }
    ),
    withTaskDefinitionArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_definition_arn" expected to be of type "string"';
      {
        task_definition_arn: converted,
      }
    ),
    capacity_provider_strategy:: {
      local block = self,
      new(capacityProvider):: (
        {}
        + block.withCapacityProvider(capacityProvider)
      ),
      withBase(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"base" expected to be of type "number"';
        {
          base: converted,
        }
      ),
      withCapacityProvider(value):: (
        local converted = value;
        assert std.isString(converted) : '"capacity_provider" expected to be of type "string"';
        {
          capacity_provider: converted,
        }
      ),
      withWeight(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"weight" expected to be of type "number"';
        {
          weight: converted,
        }
      ),
    },
    network_configuration:: {
      local block = self,
      new(subnets):: (
        {}
        + block.withSubnets(subnets)
      ),
      withAssignPublicIp(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"assign_public_ip" expected to be of type "bool"';
        {
          assign_public_ip: converted,
        }
      ),
      withSecurityGroups(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
        {
          security_groups: converted,
        }
      ),
      withSecurityGroupsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
        {
          security_groups+: converted,
        }
      ),
      withSubnets(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
        {
          subnets: converted,
        }
      ),
      withSubnetsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
        {
          subnets+: converted,
        }
      ),
    },
    ordered_placement_strategy:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withField(value):: (
        local converted = value;
        assert std.isString(converted) : '"field" expected to be of type "string"';
        {
          field: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    placement_constraint:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withExpression(value):: (
        local converted = value;
        assert std.isString(converted) : '"expression" expected to be of type "string"';
        {
          expression: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withCapacityProviderStrategy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_provider_strategy: value,
      }
    ),
    withNetworkConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_configuration: value,
      }
    ),
    withOrderedPlacementStrategy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ordered_placement_strategy: value,
      }
    ),
    withPlacementConstraint(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        placement_constraint: value,
      }
    ),
    withCapacityProviderStrategyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_provider_strategy+: converted,
      }
    ),
    withNetworkConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_configuration+: converted,
      }
    ),
    withOrderedPlacementStrategyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ordered_placement_strategy+: converted,
      }
    ),
    withPlacementConstraintMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        placement_constraint+: converted,
      }
    ),
  },
  http_target:: {
    local block = self,
    new():: (
      {}
    ),
    withHeaderParameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"header_parameters" expected to be of type "map"';
      {
        header_parameters: converted,
      }
    ),
    withPathParameterValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
      {
        path_parameter_values: converted,
      }
    ),
    withPathParameterValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
      {
        path_parameter_values+: converted,
      }
    ),
    withQueryStringParameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"query_string_parameters" expected to be of type "map"';
      {
        query_string_parameters: converted,
      }
    ),
  },
  input_transformer:: {
    local block = self,
    new(inputTemplate):: (
      {}
      + block.withInputTemplate(inputTemplate)
    ),
    withInputPaths(value):: (
      local converted = value;
      assert std.isObject(converted) : '"input_paths" expected to be of type "map"';
      {
        input_paths: converted,
      }
    ),
    withInputTemplate(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_template" expected to be of type "string"';
      {
        input_template: converted,
      }
    ),
  },
  kinesis_target:: {
    local block = self,
    new():: (
      {}
    ),
    withPartitionKeyPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"partition_key_path" expected to be of type "string"';
      {
        partition_key_path: converted,
      }
    ),
  },
  redshift_target:: {
    local block = self,
    new(database):: (
      {}
      + block.withDatabase(database)
    ),
    withDatabase(value):: (
      local converted = value;
      assert std.isString(converted) : '"database" expected to be of type "string"';
      {
        database: converted,
      }
    ),
    withDbUser(value):: (
      local converted = value;
      assert std.isString(converted) : '"db_user" expected to be of type "string"';
      {
        db_user: converted,
      }
    ),
    withSecretsManagerArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"secrets_manager_arn" expected to be of type "string"';
      {
        secrets_manager_arn: converted,
      }
    ),
    withSql(value):: (
      local converted = value;
      assert std.isString(converted) : '"sql" expected to be of type "string"';
      {
        sql: converted,
      }
    ),
    withStatementName(value):: (
      local converted = value;
      assert std.isString(converted) : '"statement_name" expected to be of type "string"';
      {
        statement_name: converted,
      }
    ),
    withWithEvent(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"with_event" expected to be of type "bool"';
      {
        with_event: converted,
      }
    ),
  },
  retry_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withMaximumEventAgeInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_event_age_in_seconds" expected to be of type "number"';
      {
        maximum_event_age_in_seconds: converted,
      }
    ),
    withMaximumRetryAttempts(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_retry_attempts" expected to be of type "number"';
      {
        maximum_retry_attempts: converted,
      }
    ),
  },
  run_command_targets:: {
    local block = self,
    new(key, values):: (
      {}
      + block.withKey(key)
      + block.withValues(values)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  sagemaker_pipeline_target:: {
    local block = self,
    new():: (
      {}
    ),
    pipeline_parameter_list:: {
      local block = self,
      new(name, value):: (
        {}
        + block.withName(name)
        + block.withValue(value)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    withPipelineParameterList(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pipeline_parameter_list: value,
      }
    ),
    withPipelineParameterListMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pipeline_parameter_list+: converted,
      }
    ),
  },
  sqs_target:: {
    local block = self,
    new():: (
      {}
    ),
    withMessageGroupId(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_group_id" expected to be of type "string"';
      {
        message_group_id: converted,
      }
    ),
  },
  withAppsyncTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      appsync_target: value,
    }
  ),
  withBatchTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      batch_target: value,
    }
  ),
  withDeadLetterConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config: value,
    }
  ),
  withEcsTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ecs_target: value,
    }
  ),
  withHttpTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_target: value,
    }
  ),
  withInputTransformer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_transformer: value,
    }
  ),
  withKinesisTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_target: value,
    }
  ),
  withRedshiftTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_target: value,
    }
  ),
  withRetryPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retry_policy: value,
    }
  ),
  withRunCommandTargets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      run_command_targets: value,
    }
  ),
  withSagemakerPipelineTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sagemaker_pipeline_target: value,
    }
  ),
  withSqsTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sqs_target: value,
    }
  ),
  withAppsyncTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      appsync_target+: converted,
    }
  ),
  withBatchTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      batch_target+: converted,
    }
  ),
  withDeadLetterConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config+: converted,
    }
  ),
  withEcsTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ecs_target+: converted,
    }
  ),
  withHttpTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_target+: converted,
    }
  ),
  withInputTransformerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_transformer+: converted,
    }
  ),
  withKinesisTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_target+: converted,
    }
  ),
  withRedshiftTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_target+: converted,
    }
  ),
  withRetryPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retry_policy+: converted,
    }
  ),
  withRunCommandTargetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      run_command_targets+: converted,
    }
  ),
  withSagemakerPipelineTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sagemaker_pipeline_target+: converted,
    }
  ),
  withSqsTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sqs_target+: converted,
    }
  ),
}
