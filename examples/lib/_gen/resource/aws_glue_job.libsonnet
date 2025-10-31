{
  local block = self,
  new(terraformName, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_job",
          type:: "resource",
          attributes:: ["arn", "connections", "default_arguments", "description", "execution_class", "glue_version", "id", "job_mode", "job_run_queuing_enabled", "maintenance_window", "max_capacity", "max_retries", "name", "non_overridable_arguments", "number_of_workers", "region", "role_arn", "security_configuration", "tags", "tags_all", "timeout", "worker_type"],
        },
      },
    }
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  withConnections(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connections" expected to be of type "list"';
    {
      connections: converted,
    }
  ),
  withConnectionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connections" expected to be of type "list"';
    {
      connections+: converted,
    }
  ),
  withDefaultArguments(value):: (
    local converted = value;
    assert std.isObject(converted) : '"default_arguments" expected to be of type "map"';
    {
      default_arguments: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withExecutionClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_class" expected to be of type "string"';
    {
      execution_class: converted,
    }
  ),
  withGlueVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"glue_version" expected to be of type "string"';
    {
      glue_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withJobMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_mode" expected to be of type "string"';
    {
      job_mode: converted,
    }
  ),
  withJobRunQueuingEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"job_run_queuing_enabled" expected to be of type "bool"';
    {
      job_run_queuing_enabled: converted,
    }
  ),
  withMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_window" expected to be of type "string"';
    {
      maintenance_window: converted,
    }
  ),
  withMaxCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
    {
      max_capacity: converted,
    }
  ),
  withMaxRetries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
    {
      max_retries: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNonOverridableArguments(value):: (
    local converted = value;
    assert std.isObject(converted) : '"non_overridable_arguments" expected to be of type "map"';
    {
      non_overridable_arguments: converted,
    }
  ),
  withNumberOfWorkers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_workers" expected to be of type "number"';
    {
      number_of_workers: converted,
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
  withSecurityConfiguration(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
    {
      security_configuration: converted,
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
  withTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
    {
      timeout: converted,
    }
  ),
  withWorkerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"worker_type" expected to be of type "string"';
    {
      worker_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  command:: {
    local block = self,
    new(scriptLocation):: (
      {}
      + block.withScriptLocation(scriptLocation)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withPythonVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"python_version" expected to be of type "string"';
      {
        python_version: converted,
      }
    ),
    withRuntime(value):: (
      local converted = value;
      assert std.isString(converted) : '"runtime" expected to be of type "string"';
      {
        runtime: converted,
      }
    ),
    withScriptLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"script_location" expected to be of type "string"';
      {
        script_location: converted,
      }
    ),
  },
  execution_property:: {
    local block = self,
    new():: (
      {}
    ),
    withMaxConcurrentRuns(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrent_runs" expected to be of type "number"';
      {
        max_concurrent_runs: converted,
      }
    ),
  },
  notification_property:: {
    local block = self,
    new():: (
      {}
    ),
    withNotifyDelayAfter(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"notify_delay_after" expected to be of type "number"';
      {
        notify_delay_after: converted,
      }
    ),
  },
  source_control_details:: {
    local block = self,
    new():: (
      {}
    ),
    withAuthStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_strategy" expected to be of type "string"';
      {
        auth_strategy: converted,
      }
    ),
    withAuthToken(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_token" expected to be of type "string"';
      {
        auth_token: converted,
      }
    ),
    withBranch(value):: (
      local converted = value;
      assert std.isString(converted) : '"branch" expected to be of type "string"';
      {
        branch: converted,
      }
    ),
    withFolder(value):: (
      local converted = value;
      assert std.isString(converted) : '"folder" expected to be of type "string"';
      {
        folder: converted,
      }
    ),
    withLastCommitId(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_commit_id" expected to be of type "string"';
      {
        last_commit_id: converted,
      }
    ),
    withOwner(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner" expected to be of type "string"';
      {
        owner: converted,
      }
    ),
    withProvider(value):: (
      local converted = value;
      assert std.isString(converted) : '"provider" expected to be of type "string"';
      {
        provider: converted,
      }
    ),
    withRepository(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository" expected to be of type "string"';
      {
        repository: converted,
      }
    ),
  },
  withCommand(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      command: value,
    }
  ),
  withExecutionProperty(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      execution_property: value,
    }
  ),
  withNotificationProperty(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_property: value,
    }
  ),
  withSourceControlDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_control_details: value,
    }
  ),
  withCommandMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      command+: converted,
    }
  ),
  withExecutionPropertyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      execution_property+: converted,
    }
  ),
  withNotificationPropertyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_property+: converted,
    }
  ),
  withSourceControlDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_control_details+: converted,
    }
  ),
}
