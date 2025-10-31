{
  local block = self,
  new(terraformName, deviceFleetName, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_device_fleet",
          type:: "resource",
          attributes:: ["arn", "description", "device_fleet_name", "enable_iot_role_alias", "id", "iot_role_alias", "region", "role_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withDeviceFleetName(deviceFleetName)
    + block.withRoleArn(roleArn)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDeviceFleetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_fleet_name" expected to be of type "string"';
    {
      device_fleet_name: converted,
    }
  ),
  withEnableIotRoleAlias(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_iot_role_alias" expected to be of type "bool"';
    {
      enable_iot_role_alias: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  output_config:: {
    local block = self,
    new(s3OutputLocation):: (
      {}
      + block.withS3OutputLocation(s3OutputLocation)
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    withS3OutputLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_output_location" expected to be of type "string"';
      {
        s3_output_location: converted,
      }
    ),
  },
  withOutputConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_config: value,
    }
  ),
  withOutputConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_config+: converted,
    }
  ),
}
