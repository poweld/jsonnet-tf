{
  local block = self,
  new(terraformName, imageId, instanceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_launch_configuration",
          type:: "resource",
          attributes:: ["arn", "associate_public_ip_address", "ebs_optimized", "enable_monitoring", "iam_instance_profile", "id", "image_id", "instance_type", "key_name", "name", "name_prefix", "placement_tenancy", "region", "security_groups", "spot_price", "user_data", "user_data_base64"],
        },
      },
    }
    + block.withImageId(imageId)
    + block.withInstanceType(instanceType)
  ),
  withAssociatePublicIpAddress(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"associate_public_ip_address" expected to be of type "bool"';
    {
      associate_public_ip_address: converted,
    }
  ),
  withEbsOptimized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
    {
      ebs_optimized: converted,
    }
  ),
  withEnableMonitoring(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_monitoring" expected to be of type "bool"';
    {
      enable_monitoring: converted,
    }
  ),
  withIamInstanceProfile(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_instance_profile" expected to be of type "string"';
    {
      iam_instance_profile: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageId(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  withKeyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPlacementTenancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_tenancy" expected to be of type "string"';
    {
      placement_tenancy: converted,
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
  withSpotPrice(value):: (
    local converted = value;
    assert std.isString(converted) : '"spot_price" expected to be of type "string"';
    {
      spot_price: converted,
    }
  ),
  withUserData(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data" expected to be of type "string"';
    {
      user_data: converted,
    }
  ),
  withUserDataBase64(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data_base64" expected to be of type "string"';
    {
      user_data_base64: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  ebs_block_device:: {
    local block = self,
    new(deviceName):: (
      {}
      + block.withDeviceName(deviceName)
    ),
    withDeleteOnTermination(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
      {
        delete_on_termination: converted,
      }
    ),
    withDeviceName(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_name" expected to be of type "string"';
      {
        device_name: converted,
      }
    ),
    withEncrypted(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
      {
        encrypted: converted,
      }
    ),
    withIops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    withNoDevice(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"no_device" expected to be of type "bool"';
      {
        no_device: converted,
      }
    ),
    withSnapshotId(value):: (
      local converted = value;
      assert std.isString(converted) : '"snapshot_id" expected to be of type "string"';
      {
        snapshot_id: converted,
      }
    ),
    withThroughput(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
      {
        throughput: converted,
      }
    ),
    withVolumeSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
      {
        volume_size: converted,
      }
    ),
    withVolumeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_type" expected to be of type "string"';
      {
        volume_type: converted,
      }
    ),
  },
  ephemeral_block_device:: {
    local block = self,
    new(deviceName):: (
      {}
      + block.withDeviceName(deviceName)
    ),
    withDeviceName(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_name" expected to be of type "string"';
      {
        device_name: converted,
      }
    ),
    withNoDevice(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"no_device" expected to be of type "bool"';
      {
        no_device: converted,
      }
    ),
    withVirtualName(value):: (
      local converted = value;
      assert std.isString(converted) : '"virtual_name" expected to be of type "string"';
      {
        virtual_name: converted,
      }
    ),
  },
  metadata_options:: {
    local block = self,
    new():: (
      {}
    ),
    withHttpEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_endpoint" expected to be of type "string"';
      {
        http_endpoint: converted,
      }
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
  root_block_device:: {
    local block = self,
    new():: (
      {}
    ),
    withDeleteOnTermination(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
      {
        delete_on_termination: converted,
      }
    ),
    withEncrypted(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
      {
        encrypted: converted,
      }
    ),
    withIops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    withThroughput(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
      {
        throughput: converted,
      }
    ),
    withVolumeSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
      {
        volume_size: converted,
      }
    ),
    withVolumeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_type" expected to be of type "string"';
      {
        volume_type: converted,
      }
    ),
  },
  withEbsBlockDevice(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_block_device: value,
    }
  ),
  withEphemeralBlockDevice(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_block_device: value,
    }
  ),
  withMetadataOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_options: value,
    }
  ),
  withRootBlockDevice(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_block_device: value,
    }
  ),
  withEbsBlockDeviceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_block_device+: converted,
    }
  ),
  withEphemeralBlockDeviceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_block_device+: converted,
    }
  ),
  withMetadataOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_options+: converted,
    }
  ),
  withRootBlockDeviceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_block_device+: converted,
    }
  ),
}
