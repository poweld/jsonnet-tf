{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_mq_broker_instance_type_offerings",
          type:: "data",
          attributes:: ["broker_instance_options", "engine_type", "host_instance_type", "id", "region", "storage_type"],
        },
      },
    }
  ),
  withEngineType(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_type" expected to be of type "string"';
    {
      engine_type: converted,
    }
  ),
  withHostInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_instance_type" expected to be of type "string"';
    {
      host_instance_type: converted,
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
  withStorageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
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
