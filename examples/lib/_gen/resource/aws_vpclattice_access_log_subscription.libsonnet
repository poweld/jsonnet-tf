{
  local block = self,
  new(terraformName, destinationArn, resourceIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpclattice_access_log_subscription",
          type:: "resource",
          attributes:: ["arn", "destination_arn", "id", "region", "resource_arn", "resource_identifier", "service_network_log_type", "tags", "tags_all"],
        },
      },
    }
    + block.withDestinationArn(destinationArn)
    + block.withResourceIdentifier(resourceIdentifier)
  ),
  withDestinationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
    {
      destination_arn: converted,
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
  withResourceIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_identifier" expected to be of type "string"';
    {
      resource_identifier: converted,
    }
  ),
  withServiceNetworkLogType(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_network_log_type" expected to be of type "string"';
    {
      service_network_log_type: converted,
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
