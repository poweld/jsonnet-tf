{
  local block = self,
  new(terraformName, description, hsmConfigurationIdentifier, hsmIpAddress, hsmPartitionName, hsmPartitionPassword, hsmServerPublicCertificate):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_hsm_configuration",
          type:: "resource",
          attributes:: ["arn", "description", "hsm_configuration_identifier", "hsm_ip_address", "hsm_partition_name", "hsm_partition_password", "hsm_server_public_certificate", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDescription(description)
    + block.withHsmConfigurationIdentifier(hsmConfigurationIdentifier)
    + block.withHsmIpAddress(hsmIpAddress)
    + block.withHsmPartitionName(hsmPartitionName)
    + block.withHsmPartitionPassword(hsmPartitionPassword)
    + block.withHsmServerPublicCertificate(hsmServerPublicCertificate)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withHsmConfigurationIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_configuration_identifier" expected to be of type "string"';
    {
      hsm_configuration_identifier: converted,
    }
  ),
  withHsmIpAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_ip_address" expected to be of type "string"';
    {
      hsm_ip_address: converted,
    }
  ),
  withHsmPartitionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_partition_name" expected to be of type "string"';
    {
      hsm_partition_name: converted,
    }
  ),
  withHsmPartitionPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_partition_password" expected to be of type "string"';
    {
      hsm_partition_password: converted,
    }
  ),
  withHsmServerPublicCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_server_public_certificate" expected to be of type "string"';
    {
      hsm_server_public_certificate: converted,
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
