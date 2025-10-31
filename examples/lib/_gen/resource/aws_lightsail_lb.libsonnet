{
  local block = self,
  new(terraformName, instancePort, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_lb",
          type:: "resource",
          attributes:: ["arn", "created_at", "dns_name", "health_check_path", "id", "instance_port", "ip_address_type", "name", "protocol", "public_ports", "region", "support_code", "tags", "tags_all"],
        },
      },
    }
    + block.withInstancePort(instancePort)
    + block.withName(name)
  ),
  withHealthCheckPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_path" expected to be of type "string"';
    {
      health_check_path: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstancePort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_port" expected to be of type "number"';
    {
      instance_port: converted,
    }
  ),
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
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
}
