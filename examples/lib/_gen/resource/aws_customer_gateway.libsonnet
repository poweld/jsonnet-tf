{
  local block = self,
  new(terraformName, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_customer_gateway",
          type:: "resource",
          attributes:: ["arn", "bgp_asn", "bgp_asn_extended", "certificate_arn", "device_name", "id", "ip_address", "region", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withType(type)
  ),
  withBgpAsn(value):: (
    local converted = value;
    assert std.isString(converted) : '"bgp_asn" expected to be of type "string"';
    {
      bgp_asn: converted,
    }
  ),
  withBgpAsnExtended(value):: (
    local converted = value;
    assert std.isString(converted) : '"bgp_asn_extended" expected to be of type "string"';
    {
      bgp_asn_extended: converted,
    }
  ),
  withCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  withDeviceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_name" expected to be of type "string"';
    {
      device_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address" expected to be of type "string"';
    {
      ip_address: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
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
