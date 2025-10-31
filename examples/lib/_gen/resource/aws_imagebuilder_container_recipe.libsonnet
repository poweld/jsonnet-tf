{
  local block = self,
  new(terraformName, containerType, name, parentImage, version):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_imagebuilder_container_recipe",
          type:: "resource",
          attributes:: ["arn", "container_type", "date_created", "description", "dockerfile_template_data", "dockerfile_template_uri", "encrypted", "id", "kms_key_id", "name", "owner", "parent_image", "platform", "platform_override", "region", "tags", "tags_all", "version", "working_directory"],
        },
      },
    }
    + block.withContainerType(containerType)
    + block.withName(name)
    + block.withParentImage(parentImage)
    + block.withVersion(version)
  ),
  withContainerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_type" expected to be of type "string"';
    {
      container_type: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDockerfileTemplateData(value):: (
    local converted = value;
    assert std.isString(converted) : '"dockerfile_template_data" expected to be of type "string"';
    {
      dockerfile_template_data: converted,
    }
  ),
  withDockerfileTemplateUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"dockerfile_template_uri" expected to be of type "string"';
    {
      dockerfile_template_uri: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  withPlatformOverride(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_override" expected to be of type "string"';
    {
      platform_override: converted,
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
  instance_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withImage(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
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
    withBlockDeviceMapping(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        block_device_mapping: value,
      }
    ),
    withBlockDeviceMappingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        block_device_mapping+: converted,
      }
    ),
  },
  target_repository:: {
    local block = self,
    new(repositoryName, service):: (
      {}
      + block.withRepositoryName(repositoryName)
      + block.withService(service)
    ),
    withRepositoryName(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository_name" expected to be of type "string"';
      {
        repository_name: converted,
      }
    ),
    withService(value):: (
      local converted = value;
      assert std.isString(converted) : '"service" expected to be of type "string"';
      {
        service: converted,
      }
    ),
  },
  withComponent(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      component: value,
    }
  ),
  withInstanceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_configuration: value,
    }
  ),
  withTargetRepository(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_repository: value,
    }
  ),
  withComponentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      component+: converted,
    }
  ),
  withInstanceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_configuration+: converted,
    }
  ),
  withTargetRepositoryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_repository+: converted,
    }
  ),
}
