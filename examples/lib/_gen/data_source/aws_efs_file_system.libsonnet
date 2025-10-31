{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_efs_file_system",
          type:: "data",
          attributes:: ["arn", "availability_zone_id", "availability_zone_name", "creation_token", "dns_name", "encrypted", "file_system_id", "id", "kms_key_id", "lifecycle_policy", "name", "performance_mode", "protection", "provisioned_throughput_in_mibps", "region", "size_in_bytes", "tags", "throughput_mode"],
        },
      },
    }
  ),
  withCreationToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_token" expected to be of type "string"';
    {
      creation_token: converted,
    }
  ),
  withFileSystemId(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
