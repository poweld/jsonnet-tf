{
  local block = self,
  new(terraformName, diskName, diskPath, instanceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_disk_attachment",
          type:: "resource",
          attributes:: ["disk_name", "disk_path", "id", "instance_name", "region"],
        },
      },
    }
    + block.withDiskName(diskName)
    + block.withDiskPath(diskPath)
    + block.withInstanceName(instanceName)
  ),
  withDiskName(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_name" expected to be of type "string"';
    {
      disk_name: converted,
    }
  ),
  withDiskPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_path" expected to be of type "string"';
    {
      disk_path: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_name" expected to be of type "string"';
    {
      instance_name: converted,
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
}
