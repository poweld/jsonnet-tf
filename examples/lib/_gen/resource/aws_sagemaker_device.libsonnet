{
  local block = self,
  new(terraformName, deviceFleetName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_device",
          type:: "resource",
          attributes:: ["agent_version", "arn", "device_fleet_name", "id", "region"],
        },
      },
    }
    + block.withDeviceFleetName(deviceFleetName)
  ),
  withDeviceFleetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_fleet_name" expected to be of type "string"';
    {
      device_fleet_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  device:: {
    local block = self,
    new(deviceName):: (
      {}
      + block.withDeviceName(deviceName)
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withDeviceName(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_name" expected to be of type "string"';
      {
        device_name: converted,
      }
    ),
    withIotThingName(value):: (
      local converted = value;
      assert std.isString(converted) : '"iot_thing_name" expected to be of type "string"';
      {
        iot_thing_name: converted,
      }
    ),
  },
  withDevice(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device: value,
    }
  ),
  withDeviceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device+: converted,
    }
  ),
}
