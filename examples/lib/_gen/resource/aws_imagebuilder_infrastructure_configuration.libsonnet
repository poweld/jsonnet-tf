{
  local block = self,
  new(terraformName, instanceProfileName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_imagebuilder_infrastructure_configuration",
          type:: "resource",
          attributes:: ["arn", "date_created", "date_updated", "description", "id", "instance_profile_name", "instance_types", "key_pair", "name", "region", "resource_tags", "security_group_ids", "sns_topic_arn", "subnet_id", "tags", "tags_all", "terminate_instance_on_failure"],
        },
      },
    }
    + block.withInstanceProfileName(instanceProfileName)
    + block.withName(name)
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
  withInstanceProfileName(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_profile_name" expected to be of type "string"';
    {
      instance_profile_name: converted,
    }
  ),
  withInstanceTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_types" expected to be of type "set"';
    {
      instance_types: converted,
    }
  ),
  withInstanceTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_types" expected to be of type "set"';
    {
      instance_types+: converted,
    }
  ),
  withKeyPair(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_pair" expected to be of type "string"';
    {
      key_pair: converted,
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
  withResourceTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_tags" expected to be of type "map"';
    {
      resource_tags: converted,
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
  withSnsTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
    }
  ),
  withSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  withTerminateInstanceOnFailure(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"terminate_instance_on_failure" expected to be of type "bool"';
    {
      terminate_instance_on_failure: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  instance_metadata_options:: {
    local block = self,
    new():: (
      {}
    ),
    withHttpPutResponseHopLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"http_put_response_hop_limit" expected to be of type "number"';
      {
        http_put_response_hop_limit: converted,
      }
    ),
    withHttpTokens(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_tokens" expected to be of type "string"';
      {
        http_tokens: converted,
      }
    ),
  },
  logging:: {
    local block = self,
    new():: (
      {}
    ),
    s3_logs:: {
      local block = self,
      new(s3BucketName):: (
        {}
        + block.withS3BucketName(s3BucketName)
      ),
      withS3BucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
        {
          s3_bucket_name: converted,
        }
      ),
      withS3KeyPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
        {
          s3_key_prefix: converted,
        }
      ),
    },
    withS3Logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs: value,
      }
    ),
    withS3LogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs+: converted,
      }
    ),
  },
  placement:: {
    local block = self,
    new():: (
      {}
    ),
    withAvailabilityZone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    withHostId(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_id" expected to be of type "string"';
      {
        host_id: converted,
      }
    ),
    withHostResourceGroupArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_resource_group_arn" expected to be of type "string"';
      {
        host_resource_group_arn: converted,
      }
    ),
    withTenancy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenancy" expected to be of type "string"';
      {
        tenancy: converted,
      }
    ),
  },
  withInstanceMetadataOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_metadata_options: value,
    }
  ),
  withLogging(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging: value,
    }
  ),
  withPlacement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement: value,
    }
  ),
  withInstanceMetadataOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_metadata_options+: converted,
    }
  ),
  withLoggingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging+: converted,
    }
  ),
  withPlacementMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement+: converted,
    }
  ),
}
