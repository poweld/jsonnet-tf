{
  local block = self,
  new(terraformName, directoryId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_directory_service_directory",
          type:: "data",
          attributes:: ["access_url", "alias", "connect_settings", "description", "directory_id", "dns_ip_addresses", "edition", "enable_sso", "id", "name", "radius_settings", "region", "security_group_id", "short_name", "size", "tags", "type", "vpc_settings"],
        },
      },
    }
    + block.withDirectoryId(directoryId)
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
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
