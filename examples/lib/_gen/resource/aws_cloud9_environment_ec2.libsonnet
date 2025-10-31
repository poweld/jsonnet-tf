{
  local block = self,
  new(terraformName, imageId, instanceType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloud9_environment_ec2",
          type:: "resource",
          attributes:: ["arn", "automatic_stop_time_minutes", "connection_type", "description", "id", "image_id", "instance_type", "name", "owner_arn", "region", "subnet_id", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withImageId(imageId)
    + block.withInstanceType(instanceType)
    + block.withName(name)
  ),
  withAutomaticStopTimeMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"automatic_stop_time_minutes" expected to be of type "number"';
    {
      automatic_stop_time_minutes: converted,
    }
  ),
  withConnectionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_type" expected to be of type "string"';
    {
      connection_type: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageId(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOwnerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_arn" expected to be of type "string"';
    {
      owner_arn: converted,
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
  withSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
