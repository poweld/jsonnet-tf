{
  local block = self,
  new(terraformName, instanceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_routing_profile",
          type:: "data",
          attributes:: ["arn", "default_outbound_queue_id", "description", "id", "instance_id", "media_concurrencies", "name", "queue_configs", "region", "routing_profile_id", "tags"],
        },
      },
    }
    + block.withInstanceId(instanceId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  withRoutingProfileId(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_profile_id" expected to be of type "string"';
    {
      routing_profile_id: converted,
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
