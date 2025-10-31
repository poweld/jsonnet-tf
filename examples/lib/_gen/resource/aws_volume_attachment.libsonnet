{
  local block = self,
  new(terraformName, deviceName, instanceId, volumeId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_volume_attachment",
          type:: "resource",
          attributes:: ["device_name", "force_detach", "id", "instance_id", "region", "skip_destroy", "stop_instance_before_detaching", "volume_id"],
        },
      },
    }
    + block.withDeviceName(deviceName)
    + block.withInstanceId(instanceId)
    + block.withVolumeId(volumeId)
  ),
  withDeviceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_name" expected to be of type "string"';
    {
      device_name: converted,
    }
  ),
  withForceDetach(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_detach" expected to be of type "bool"';
    {
      force_detach: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  withStopInstanceBeforeDetaching(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"stop_instance_before_detaching" expected to be of type "bool"';
    {
      stop_instance_before_detaching: converted,
    }
  ),
  withVolumeId(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_id" expected to be of type "string"';
    {
      volume_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
