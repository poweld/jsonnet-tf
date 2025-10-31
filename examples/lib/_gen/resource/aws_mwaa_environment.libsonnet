{
  local block = self,
  new(terraformName, dagS3Path, executionRoleArn, name, sourceBucketArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_mwaa_environment",
          type:: "resource",
          attributes:: ["airflow_configuration_options", "airflow_version", "arn", "created_at", "dag_s3_path", "database_vpc_endpoint_service", "endpoint_management", "environment_class", "execution_role_arn", "id", "kms_key", "last_updated", "max_webservers", "max_workers", "min_webservers", "min_workers", "name", "plugins_s3_object_version", "plugins_s3_path", "region", "requirements_s3_object_version", "requirements_s3_path", "schedulers", "service_role_arn", "source_bucket_arn", "startup_script_s3_object_version", "startup_script_s3_path", "status", "tags", "tags_all", "webserver_access_mode", "webserver_url", "webserver_vpc_endpoint_service", "weekly_maintenance_window_start", "worker_replacement_strategy"],
        },
      },
    }
    + block.withDagS3Path(dagS3Path)
    + block.withExecutionRoleArn(executionRoleArn)
    + block.withName(name)
    + block.withSourceBucketArn(sourceBucketArn)
  ),
  withAirflowConfigurationOptions(value):: (
    local converted = value;
    assert std.isObject(converted) : '"airflow_configuration_options" expected to be of type "map"';
    {
      airflow_configuration_options: converted,
    }
  ),
  withAirflowVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"airflow_version" expected to be of type "string"';
    {
      airflow_version: converted,
    }
  ),
  withDagS3Path(value):: (
    local converted = value;
    assert std.isString(converted) : '"dag_s3_path" expected to be of type "string"';
    {
      dag_s3_path: converted,
    }
  ),
  withEndpointManagement(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_management" expected to be of type "string"';
    {
      endpoint_management: converted,
    }
  ),
  withEnvironmentClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_class" expected to be of type "string"';
    {
      environment_class: converted,
    }
  ),
  withExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key" expected to be of type "string"';
    {
      kms_key: converted,
    }
  ),
  withMaxWebservers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_webservers" expected to be of type "number"';
    {
      max_webservers: converted,
    }
  ),
  withMaxWorkers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_workers" expected to be of type "number"';
    {
      max_workers: converted,
    }
  ),
  withMinWebservers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_webservers" expected to be of type "number"';
    {
      min_webservers: converted,
    }
  ),
  withMinWorkers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_workers" expected to be of type "number"';
    {
      min_workers: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPluginsS3ObjectVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"plugins_s3_object_version" expected to be of type "string"';
    {
      plugins_s3_object_version: converted,
    }
  ),
  withPluginsS3Path(value):: (
    local converted = value;
    assert std.isString(converted) : '"plugins_s3_path" expected to be of type "string"';
    {
      plugins_s3_path: converted,
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
  withRequirementsS3ObjectVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"requirements_s3_object_version" expected to be of type "string"';
    {
      requirements_s3_object_version: converted,
    }
  ),
  withRequirementsS3Path(value):: (
    local converted = value;
    assert std.isString(converted) : '"requirements_s3_path" expected to be of type "string"';
    {
      requirements_s3_path: converted,
    }
  ),
  withSchedulers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"schedulers" expected to be of type "number"';
    {
      schedulers: converted,
    }
  ),
  withSourceBucketArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_bucket_arn" expected to be of type "string"';
    {
      source_bucket_arn: converted,
    }
  ),
  withStartupScriptS3ObjectVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"startup_script_s3_object_version" expected to be of type "string"';
    {
      startup_script_s3_object_version: converted,
    }
  ),
  withStartupScriptS3Path(value):: (
    local converted = value;
    assert std.isString(converted) : '"startup_script_s3_path" expected to be of type "string"';
    {
      startup_script_s3_path: converted,
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
  withWebserverAccessMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"webserver_access_mode" expected to be of type "string"';
    {
      webserver_access_mode: converted,
    }
  ),
  withWeeklyMaintenanceWindowStart(value):: (
    local converted = value;
    assert std.isString(converted) : '"weekly_maintenance_window_start" expected to be of type "string"';
    {
      weekly_maintenance_window_start: converted,
    }
  ),
  withWorkerReplacementStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"worker_replacement_strategy" expected to be of type "string"';
    {
      worker_replacement_strategy: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  logging_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    dag_processing_logs:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogLevel(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    scheduler_logs:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogLevel(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    task_logs:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogLevel(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    webserver_logs:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogLevel(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    worker_logs:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogLevel(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    withDagProcessingLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dag_processing_logs: value,
      }
    ),
    withSchedulerLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scheduler_logs: value,
      }
    ),
    withTaskLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        task_logs: value,
      }
    ),
    withWebserverLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        webserver_logs: value,
      }
    ),
    withWorkerLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        worker_logs: value,
      }
    ),
    withDagProcessingLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dag_processing_logs+: converted,
      }
    ),
    withSchedulerLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scheduler_logs+: converted,
      }
    ),
    withTaskLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        task_logs+: converted,
      }
    ),
    withWebserverLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        webserver_logs+: converted,
      }
    ),
    withWorkerLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        worker_logs+: converted,
      }
    ),
  },
  network_configuration:: {
    local block = self,
    new(securityGroupIds, subnetIds):: (
      {}
      + block.withSecurityGroupIds(securityGroupIds)
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
  withLoggingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration: value,
    }
  ),
  withNetworkConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withLoggingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration+: converted,
    }
  ),
  withNetworkConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
}
