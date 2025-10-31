{
  local block = self,
  new(terraformName, bandwidth, location, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dx_connection",
          type:: "resource",
          attributes:: ["arn", "aws_device", "bandwidth", "encryption_mode", "has_logical_redundancy", "id", "jumbo_frame_capable", "location", "macsec_capable", "name", "owner_account_id", "partner_name", "port_encryption_status", "provider_name", "region", "request_macsec", "skip_destroy", "tags", "tags_all", "vlan_id"],
        },
      },
    }
    + block.withBandwidth(bandwidth)
    + block.withLocation(location)
    + block.withName(name)
  ),
  withBandwidth(value):: (
    local converted = value;
    assert std.isString(converted) : '"bandwidth" expected to be of type "string"';
    {
      bandwidth: converted,
    }
  ),
  withEncryptionMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_mode" expected to be of type "string"';
    {
      encryption_mode: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLocation(value):: (
    local converted = value;
    assert std.isString(converted) : '"location" expected to be of type "string"';
    {
      location: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withProviderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
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
  withRequestMacsec(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"request_macsec" expected to be of type "bool"';
    {
      request_macsec: converted,
    }
  ),
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
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
