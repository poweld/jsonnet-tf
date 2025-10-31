{
  local block = self,
  new(terraformName, name, parentImage, version):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_imagebuilder_image_recipe",
          type:: "resource",
          attributes:: ["arn", "date_created", "description", "id", "name", "owner", "parent_image", "platform", "region", "tags", "tags_all", "user_data_base64", "version", "working_directory"],
        },
      },
    }
    + block.withName(name)
    + block.withParentImage(parentImage)
    + block.withVersion(version)
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withParentImage(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_image" expected to be of type "string"';
    {
      parent_image: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withUserDataBase64(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data_base64" expected to be of type "string"';
    {
      user_data_base64: converted,
    }
  ),
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withWorkingDirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"working_directory" expected to be of type "string"';
    {
      working_directory: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  block_device_mapping:: {
    local block = self,
    new():: (
      {}
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
    ebs:: {
      local block = self,
      new():: (
        {}
      ),
      withDeleteOnTermination(value):: (
        local converted = value;
        assert std.isString(converted) : '"delete_on_termination" expected to be of type "string"';
        {
          delete_on_termination: converted,
        }
      ),
      withEncrypted(value):: (
        local converted = value;
        assert std.isString(converted) : '"encrypted" expected to be of type "string"';
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
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
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
    withEbs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs: value,
      }
    ),
    withEbsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs+: converted,
      }
    ),
  },
  component:: {
    local block = self,
    new(componentArn):: (
      {}
      + block.withComponentArn(componentArn)
    ),
    withComponentArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"component_arn" expected to be of type "string"';
      {
        component_arn: converted,
      }
    ),
    parameter:: {
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
    withParameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter: value,
      }
    ),
    withParameterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter+: converted,
      }
    ),
  },
  systems_manager_agent:: {
    local block = self,
    new(uninstallAfterBuild):: (
      {}
      + block.withUninstallAfterBuild(uninstallAfterBuild)
    ),
    withUninstallAfterBuild(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"uninstall_after_build" expected to be of type "bool"';
      {
        uninstall_after_build: converted,
      }
    ),
  },
  withBlockDeviceMapping(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      block_device_mapping: value,
    }
  ),
  withComponent(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      component: value,
    }
  ),
  withSystemsManagerAgent(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      systems_manager_agent: value,
    }
  ),
  withBlockDeviceMappingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      block_device_mapping+: converted,
    }
  ),
  withComponentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      component+: converted,
    }
  ),
  withSystemsManagerAgentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      systems_manager_agent+: converted,
    }
  ),
}
