{
  local block = self,
  new(terraformName, replicatorName, serviceExecutionRoleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_msk_replicator",
          type:: "resource",
          attributes:: ["arn", "current_version", "description", "id", "region", "replicator_name", "service_execution_role_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withReplicatorName(replicatorName)
    + block.withServiceExecutionRoleArn(serviceExecutionRoleArn)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withReplicatorName(value):: (
    local converted = value;
    assert std.isString(converted) : '"replicator_name" expected to be of type "string"';
    {
      replicator_name: converted,
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
  kafka_cluster:: {
    local block = self,
    new():: (
      {}
    ),
    amazon_msk_cluster:: {
      local block = self,
      new(mskClusterArn):: (
        {}
        + block.withMskClusterArn(mskClusterArn)
      ),
      withMskClusterArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"msk_cluster_arn" expected to be of type "string"';
        {
          msk_cluster_arn: converted,
        }
      ),
    },
    vpc_config:: {
      local block = self,
      new(subnetIds):: (
        {}
        + block.withSubnetIds(subnetIds)
      ),
      withSecurityGroupsIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups_ids" expected to be of type "set"';
        {
          security_groups_ids: converted,
        }
      ),
      withSecurityGroupsIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups_ids" expected to be of type "set"';
        {
          security_groups_ids+: converted,
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
    withAmazonMskCluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_msk_cluster: value,
      }
    ),
    withVpcConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    withAmazonMskClusterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_msk_cluster+: converted,
      }
    ),
    withVpcConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  replication_info_list:: {
    local block = self,
    new(sourceKafkaClusterArn, targetCompressionType, targetKafkaClusterArn):: (
      {}
      + block.withSourceKafkaClusterArn(sourceKafkaClusterArn)
      + block.withTargetCompressionType(targetCompressionType)
      + block.withTargetKafkaClusterArn(targetKafkaClusterArn)
    ),
    withSourceKafkaClusterArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_kafka_cluster_arn" expected to be of type "string"';
      {
        source_kafka_cluster_arn: converted,
      }
    ),
    withTargetCompressionType(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_compression_type" expected to be of type "string"';
      {
        target_compression_type: converted,
      }
    ),
    withTargetKafkaClusterArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_kafka_cluster_arn" expected to be of type "string"';
      {
        target_kafka_cluster_arn: converted,
      }
    ),
    consumer_group_replication:: {
      local block = self,
      new(consumerGroupsToReplicate):: (
        {}
        + block.withConsumerGroupsToReplicate(consumerGroupsToReplicate)
      ),
      withConsumerGroupsToExclude(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"consumer_groups_to_exclude" expected to be of type "set"';
        {
          consumer_groups_to_exclude: converted,
        }
      ),
      withConsumerGroupsToExcludeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"consumer_groups_to_exclude" expected to be of type "set"';
        {
          consumer_groups_to_exclude+: converted,
        }
      ),
      withConsumerGroupsToReplicate(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"consumer_groups_to_replicate" expected to be of type "set"';
        {
          consumer_groups_to_replicate: converted,
        }
      ),
      withConsumerGroupsToReplicateMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"consumer_groups_to_replicate" expected to be of type "set"';
        {
          consumer_groups_to_replicate+: converted,
        }
      ),
      withDetectAndCopyNewConsumerGroups(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"detect_and_copy_new_consumer_groups" expected to be of type "bool"';
        {
          detect_and_copy_new_consumer_groups: converted,
        }
      ),
      withSynchroniseConsumerGroupOffsets(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"synchronise_consumer_group_offsets" expected to be of type "bool"';
        {
          synchronise_consumer_group_offsets: converted,
        }
      ),
    },
    topic_replication:: {
      local block = self,
      new(topicsToReplicate):: (
        {}
        + block.withTopicsToReplicate(topicsToReplicate)
      ),
      withCopyAccessControlListsForTopics(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"copy_access_control_lists_for_topics" expected to be of type "bool"';
        {
          copy_access_control_lists_for_topics: converted,
        }
      ),
      withCopyTopicConfigurations(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"copy_topic_configurations" expected to be of type "bool"';
        {
          copy_topic_configurations: converted,
        }
      ),
      withDetectAndCopyNewTopics(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"detect_and_copy_new_topics" expected to be of type "bool"';
        {
          detect_and_copy_new_topics: converted,
        }
      ),
      withTopicsToExclude(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics_to_exclude" expected to be of type "set"';
        {
          topics_to_exclude: converted,
        }
      ),
      withTopicsToExcludeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics_to_exclude" expected to be of type "set"';
        {
          topics_to_exclude+: converted,
        }
      ),
      withTopicsToReplicate(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics_to_replicate" expected to be of type "set"';
        {
          topics_to_replicate: converted,
        }
      ),
      withTopicsToReplicateMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics_to_replicate" expected to be of type "set"';
        {
          topics_to_replicate+: converted,
        }
      ),
      starting_position:: {
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
      topic_name_configuration:: {
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
      withStartingPosition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          starting_position: value,
        }
      ),
      withTopicNameConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          topic_name_configuration: value,
        }
      ),
      withStartingPositionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          starting_position+: converted,
        }
      ),
      withTopicNameConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          topic_name_configuration+: converted,
        }
      ),
    },
    withConsumerGroupReplication(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        consumer_group_replication: value,
      }
    ),
    withTopicReplication(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        topic_replication: value,
      }
    ),
    withConsumerGroupReplicationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        consumer_group_replication+: converted,
      }
    ),
    withTopicReplicationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        topic_replication+: converted,
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
  withKafkaCluster(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster: value,
    }
  ),
  withReplicationInfoList(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_info_list: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withKafkaClusterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_cluster+: converted,
    }
  ),
  withReplicationInfoListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_info_list+: converted,
    }
  ),
}
