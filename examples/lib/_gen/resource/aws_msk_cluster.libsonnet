{
  local block = self,
  new(terraformName, clusterName, kafkaVersion, numberOfBrokerNodes):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_msk_cluster",
          type:: "resource",
          attributes:: ["arn", "bootstrap_brokers", "bootstrap_brokers_public_sasl_iam", "bootstrap_brokers_public_sasl_scram", "bootstrap_brokers_public_tls", "bootstrap_brokers_sasl_iam", "bootstrap_brokers_sasl_scram", "bootstrap_brokers_tls", "bootstrap_brokers_vpc_connectivity_sasl_iam", "bootstrap_brokers_vpc_connectivity_sasl_scram", "bootstrap_brokers_vpc_connectivity_tls", "cluster_name", "cluster_uuid", "current_version", "enhanced_monitoring", "id", "kafka_version", "number_of_broker_nodes", "region", "storage_mode", "tags", "tags_all", "zookeeper_connect_string", "zookeeper_connect_string_tls"],
        },
      },
    }
    + block.withClusterName(clusterName)
    + block.withKafkaVersion(kafkaVersion)
    + block.withNumberOfBrokerNodes(numberOfBrokerNodes)
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  withEnhancedMonitoring(value):: (
    local converted = value;
    assert std.isString(converted) : '"enhanced_monitoring" expected to be of type "string"';
    {
      enhanced_monitoring: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKafkaVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"kafka_version" expected to be of type "string"';
    {
      kafka_version: converted,
    }
  ),
  withNumberOfBrokerNodes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_broker_nodes" expected to be of type "number"';
    {
      number_of_broker_nodes: converted,
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
  withStorageMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_mode" expected to be of type "string"';
    {
      storage_mode: converted,
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
  broker_node_group_info:: {
    local block = self,
    new(clientSubnets, instanceType, securityGroups):: (
      {}
      + block.withClientSubnets(clientSubnets)
      + block.withInstanceType(instanceType)
      + block.withSecurityGroups(securityGroups)
    ),
    withAzDistribution(value):: (
      local converted = value;
      assert std.isString(converted) : '"az_distribution" expected to be of type "string"';
      {
        az_distribution: converted,
      }
    ),
    withClientSubnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_subnets" expected to be of type "set"';
      {
        client_subnets: converted,
      }
    ),
    withClientSubnetsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_subnets" expected to be of type "set"';
      {
        client_subnets+: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
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
    connectivity_info:: {
      local block = self,
      new():: (
        {}
      ),
      public_access:: {
        local block = self,
        new():: (
          {}
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      vpc_connectivity:: {
        local block = self,
        new():: (
          {}
        ),
        client_authentication:: {
          local block = self,
          new():: (
            {}
          ),
          withTls(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"tls" expected to be of type "bool"';
            {
              tls: converted,
            }
          ),
          sasl:: {
            local block = self,
            new():: (
              {}
            ),
            withIam(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"iam" expected to be of type "bool"';
              {
                iam: converted,
              }
            ),
            withScram(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"scram" expected to be of type "bool"';
              {
                scram: converted,
              }
            ),
          },
          withSasl(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sasl: value,
            }
          ),
          withSaslMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sasl+: converted,
            }
          ),
        },
        withClientAuthentication(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            client_authentication: value,
          }
        ),
        withClientAuthenticationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            client_authentication+: converted,
          }
        ),
      },
      withPublicAccess(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          public_access: value,
        }
      ),
      withVpcConnectivity(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc_connectivity: value,
        }
      ),
      withPublicAccessMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          public_access+: converted,
        }
      ),
      withVpcConnectivityMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc_connectivity+: converted,
        }
      ),
    },
    storage_info:: {
      local block = self,
      new():: (
        {}
      ),
      ebs_storage_info:: {
        local block = self,
        new():: (
          {}
        ),
        withVolumeSize(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
          {
            volume_size: converted,
          }
        ),
        provisioned_throughput:: {
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
          withVolumeThroughput(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"volume_throughput" expected to be of type "number"';
            {
              volume_throughput: converted,
            }
          ),
        },
        withProvisionedThroughput(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            provisioned_throughput: value,
          }
        ),
        withProvisionedThroughputMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            provisioned_throughput+: converted,
          }
        ),
      },
      withEbsStorageInfo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_storage_info: value,
        }
      ),
      withEbsStorageInfoMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ebs_storage_info+: converted,
        }
      ),
    },
    withConnectivityInfo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connectivity_info: value,
      }
    ),
    withStorageInfo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        storage_info: value,
      }
    ),
    withConnectivityInfoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connectivity_info+: converted,
      }
    ),
    withStorageInfoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        storage_info+: converted,
      }
    ),
  },
  client_authentication:: {
    local block = self,
    new():: (
      {}
    ),
    withUnauthenticated(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"unauthenticated" expected to be of type "bool"';
      {
        unauthenticated: converted,
      }
    ),
    sasl:: {
      local block = self,
      new():: (
        {}
      ),
      withIam(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"iam" expected to be of type "bool"';
        {
          iam: converted,
        }
      ),
      withScram(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"scram" expected to be of type "bool"';
        {
          scram: converted,
        }
      ),
    },
    tls:: {
      local block = self,
      new():: (
        {}
      ),
      withCertificateAuthorityArns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
        {
          certificate_authority_arns: converted,
        }
      ),
      withCertificateAuthorityArnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
        {
          certificate_authority_arns+: converted,
        }
      ),
    },
    withSasl(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sasl: value,
      }
    ),
    withTls(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tls: value,
      }
    ),
    withSaslMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sasl+: converted,
      }
    ),
    withTlsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tls+: converted,
      }
    ),
  },
  configuration_info:: {
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
  encryption_info:: {
    local block = self,
    new():: (
      {}
    ),
    withEncryptionAtRestKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_at_rest_kms_key_arn" expected to be of type "string"';
      {
        encryption_at_rest_kms_key_arn: converted,
      }
    ),
    encryption_in_transit:: {
      local block = self,
      new():: (
        {}
      ),
      withClientBroker(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_broker" expected to be of type "string"';
        {
          client_broker: converted,
        }
      ),
      withInCluster(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"in_cluster" expected to be of type "bool"';
        {
          in_cluster: converted,
        }
      ),
    },
    withEncryptionInTransit(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_in_transit: value,
      }
    ),
    withEncryptionInTransitMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_in_transit+: converted,
      }
    ),
  },
  logging_info:: {
    local block = self,
    new():: (
      {}
    ),
    broker_logs:: {
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
    withBrokerLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        broker_logs: value,
      }
    ),
    withBrokerLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        broker_logs+: converted,
      }
    ),
  },
  open_monitoring:: {
    local block = self,
    new():: (
      {}
    ),
    prometheus:: {
      local block = self,
      new():: (
        {}
      ),
      jmx_exporter:: {
        local block = self,
        new(enabledInBroker):: (
          {}
          + block.withEnabledInBroker(enabledInBroker)
        ),
        withEnabledInBroker(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled_in_broker" expected to be of type "bool"';
          {
            enabled_in_broker: converted,
          }
        ),
      },
      node_exporter:: {
        local block = self,
        new(enabledInBroker):: (
          {}
          + block.withEnabledInBroker(enabledInBroker)
        ),
        withEnabledInBroker(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled_in_broker" expected to be of type "bool"';
          {
            enabled_in_broker: converted,
          }
        ),
      },
      withJmxExporter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          jmx_exporter: value,
        }
      ),
      withNodeExporter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          node_exporter: value,
        }
      ),
      withJmxExporterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          jmx_exporter+: converted,
        }
      ),
      withNodeExporterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          node_exporter+: converted,
        }
      ),
    },
    withPrometheus(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prometheus: value,
      }
    ),
    withPrometheusMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prometheus+: converted,
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
  withBrokerNodeGroupInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      broker_node_group_info: value,
    }
  ),
  withClientAuthentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_authentication: value,
    }
  ),
  withConfigurationInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_info: value,
    }
  ),
  withEncryptionInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_info: value,
    }
  ),
  withLoggingInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_info: value,
    }
  ),
  withOpenMonitoring(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      open_monitoring: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withBrokerNodeGroupInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      broker_node_group_info+: converted,
    }
  ),
  withClientAuthenticationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_authentication+: converted,
    }
  ),
  withConfigurationInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_info+: converted,
    }
  ),
  withEncryptionInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_info+: converted,
    }
  ),
  withLoggingInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_info+: converted,
    }
  ),
  withOpenMonitoringMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      open_monitoring+: converted,
    }
  ),
}
