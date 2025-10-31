{
  local block = self,
  new(terraformName, attributes, instanceId, serviceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_service_discovery_instance",
          type:: "resource",
          attributes:: ["attributes", "id", "instance_id", "region", "service_id"],
        },
      },
    }
    + block.withAttributes(attributes)
    + block.withInstanceId(instanceId)
    + block.withServiceId(serviceId)
  ),
  withAttributes(value):: (
    local converted = value;
    assert std.isObject(converted) : '"attributes" expected to be of type "map"';
    {
      attributes: converted,
    }
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withServiceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_id" expected to be of type "string"';
    {
      service_id: converted,
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
