{
  local block = self,
  new(terraformName, listenerIdentifier, serviceIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpclattice_listener",
          type:: "data",
          attributes:: ["arn", "created_at", "default_action", "id", "last_updated_at", "listener_id", "listener_identifier", "name", "port", "protocol", "region", "service_arn", "service_id", "service_identifier", "tags"],
        },
      },
    }
    + block.withListenerIdentifier(listenerIdentifier)
    + block.withServiceIdentifier(serviceIdentifier)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withListenerIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_identifier" expected to be of type "string"';
    {
      listener_identifier: converted,
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
  withServiceIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_identifier" expected to be of type "string"';
    {
      service_identifier: converted,
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
