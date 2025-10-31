{
  local block = self,
  new(terraformName, connectorConfiguration, kafkaconnectVersion, name, serviceExecutionRoleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_mskconnect_connector",
          type:: "resource",
          attributes:: ["arn", "connector_configuration", "description", "id", "kafkaconnect_version", "name", "region", "service_execution_role_arn", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withConnectorConfiguration(connectorConfiguration)
    + block.withKafkaconnectVersion(kafkaconnectVersion)
    + block.withName(name)
    + block.withServiceExecutionRoleArn(serviceExecutionRoleArn)
  ),
  withConnectorConfiguration(value):: (
    local converted = value;
    assert std.isObject(converted) : '"connector_configuration" expected to be of type "map"';
    {
      connector_configuration: converted,
    }
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
  withKafkaconnectVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"kafkaconnect_version" expected to be of type "string"';
    {
      kafkaconnect_version: converted,
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
  withServiceExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_execution_role_arn" expected to be of type "string"';
    {
      service_execution_role_arn: converted,
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
  capacity:: {
    local block = self,
    new():: (
      {}
    ),
    autoscaling:: {
      local block = self,
      new(maxWorkerCount, minWorkerCount):: (
        {}
        + block.withMaxWorkerCount(maxWorkerCount)
        + block.withMinWorkerCount(minWorkerCount)
      ),
      withMaxWorkerCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_worker_count" expected to be of type "number"';
        {
          max_worker_count: converted,
        }
      ),
      withMcuCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"mcu_count" expected to be of type "number"';
        {
          mcu_count: converted,
        }
      ),
      withMinWorkerCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_worker_count" expected to be of type "number"';
        {
          min_worker_count: converted,
        }
      ),
      scale_in_policy:: {
        local block = self,
        new():: (
          {}
        ),
        withCpuUtilizationPercentage(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"cpu_utilization_percentage" expected to be of type "number"';
          {
            cpu_utilization_percentage: converted,
          }
        ),
      },
      scale_out_policy:: {
        local block = self,
        new():: (
          {}
        ),
        withCpuUtilizationPercentage(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"cpu_utilization_percentage" expected to be of type "number"';
          {
            cpu_utilization_percentage: converted,
          }
        ),
      },
      withScaleInPolicy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scale_in_policy: value,
        }
      ),
      withScaleOutPolicy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scale_out_policy: value,
        }
      ),
      withScaleInPolicyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scale_in_policy+: converted,
        }
      ),
      withScaleOutPolicyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scale_out_policy+: converted,
        }
      ),
    },
    provisioned_capacity:: {
      local block = self,
      new(workerCount):: (
        {}
        + block.withWorkerCount(workerCount)
      ),
      withMcuCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"mcu_count" expected to be of type "number"';
        {
          mcu_count: converted,
        }
      ),
      withWorkerCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"worker_count" expected to be of type "number"';
        {
          worker_count: converted,
        }
      ),
    },
    withAutoscaling(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        autoscaling: value,
      }
    ),
    withProvisionedCapacity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provisioned_capacity: value,
      }
    ),
    withAutoscalingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        autoscaling+: converted,
      }
    ),
    withProvisionedCapacityMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provisioned_capacity+: converted,
      }
    ),
  },
  kafka_cluster:: {
    local block = self,
    new():: (
      {}
    ),
    apache_kafka_cluster:: {
      local block = self,
      new(bootstrapServers):: (
        {}
        + block.withBootstrapServers(bootstrapServers)
      ),
      withBootstrapServers(value):: (
        local converted = value;
        assert std.isString(converted) : '"bootstrap_servers" expected to be of type "string"';
        {
          bootstrap_servers: converted,
        }
      ),
      vpc:: {
        local block = self,
        new(securityGroups, subnets):: (
          {}
          + block.withSecurityGroups(securityGroups)
          + block.withSubnets(subnets)
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
      withVpc(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc: value,
        }
      ),
      withVpcMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc+: converted,
        }
      ),
    },
    withApacheKafkaCluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        apache_kafka_cluster: value,
      }
    ),
    withApacheKafkaClusterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        apache_kafka_cluster+: converted,
      }
    ),
  },
  kafka_cluster_client_authentication:: {
    local block = self,
    new():: (
      {}
    ),
    withAuthenticationType(value):: (
      local converted = value;
      assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
      {
        authentication_type: converted,
      }
    ),
  },
  kafka_cluster_encryption_in_transit:: {
    local block = self,
    new():: (
      {}
    ),
    withEncryptionType(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
      {
        encryption_type: converted,
      }
    ),
  },
  log_delivery:: {
    local block = self,
    new():: (
      {}
    ),
    worker_log_delivery:: {
      local block = self,
      new():: (
        {}
      ),
      cloudwatch_logs:: {
        local block = self,
        new(enabled):: (
          {}
          + block.withEnabled(enabled)
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroup(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group" expected to be of type "string"';
          {
            log_group: converted,
          }
        ),
      },
      firehose:: {
        local block = self,
        new(enabled):: (
          {}
          + block.withEnabled(enabled)
        ),
        withDeliveryStream(value):: (
          local converted = value;
          assert std.isString(converted) : '"delivery_stream" expected to be of type "string"';
          {
            delivery_stream: converted,
          }
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      s3:: {
        local block = self,
        new(enabled):: (
          {}
          + block.withEnabled(enabled)
        ),
        withBucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
      },
      withCloudwatchLogs(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logs: value,
        }
      ),
      withFirehose(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          firehose: value,
        }
      ),
      withS3(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3: value,
        }
      ),
      withCloudwatchLogsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logs+: converted,
        }
      ),
      withFirehoseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          firehose+: converted,
        }
      ),
      withS3Mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3+: converted,
        }
      ),
    },
    withWorkerLogDelivery(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        worker_log_delivery: value,
      }
    ),
    withWorkerLogDeliveryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        worker_log_delivery+: converted,
      }
    ),
  },
  plugin:: {
    local block = self,
    new():: (
      {}
    ),
    custom_plugin:: {
      local block = self,
      new(arn, revision):: (
        {}
        + block.withArn(arn)
        + block.withRevision(revision)
      ),
      withArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
      withRevision(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"revision" expected to be of type "number"';
        {
          revision: converted,
        }
      ),
    },
    withCustomPlugin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_plugin: value,
      }
    ),
    withCustomPluginMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_plugin+: converted,
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
  worker_configuration:: {
    local block = self,
    new(arn, revision):: (
      {}
      + block.withArn(arn)
      + block.withRevision(revision)
    ),
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    withRevision(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"revision" expected to be of type "number"';
      {
        revision: converted,
      }
    ),
  },
  withCapacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity: value,
    }
  ),
  withKafkaCluster(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster: value,
    }
  ),
  withKafkaClusterClientAuthentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster_client_authentication: value,
    }
  ),
  withKafkaClusterEncryptionInTransit(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster_encryption_in_transit: value,
    }
  ),
  withLogDelivery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery: value,
    }
  ),
  withPlugin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      plugin: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withWorkerConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      worker_configuration: value,
    }
  ),
  withCapacityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity+: converted,
    }
  ),
  withKafkaClusterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster+: converted,
    }
  ),
  withKafkaClusterClientAuthenticationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster_client_authentication+: converted,
    }
  ),
  withKafkaClusterEncryptionInTransitMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster_encryption_in_transit+: converted,
    }
  ),
  withLogDeliveryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery+: converted,
    }
  ),
  withPluginMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      plugin+: converted,
    }
  ),
  withWorkerConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      worker_configuration+: converted,
    }
  ),
}
