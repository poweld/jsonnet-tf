{
  local block = self,
  new(terraformName, serviceNetworkIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpclattice_service_network",
          type:: "data",
          attributes:: ["arn", "auth_type", "created_at", "id", "last_updated_at", "name", "number_of_associated_services", "number_of_associated_vpcs", "region", "service_network_identifier", "tags"],
        },
      },
    }
    + block.withServiceNetworkIdentifier(serviceNetworkIdentifier)
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
  withServiceNetworkIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_network_identifier" expected to be of type "string"';
    {
      service_network_identifier: converted,
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
