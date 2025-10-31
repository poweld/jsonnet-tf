{
  local block = self,
  new(terraformName, availabilityZone, name, sizeInGb):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_disk",
          type:: "resource",
          attributes:: ["arn", "availability_zone", "created_at", "id", "name", "region", "size_in_gb", "support_code", "tags", "tags_all"],
        },
      },
    }
    + block.withAvailabilityZone(availabilityZone)
    + block.withName(name)
    + block.withSizeInGb(sizeInGb)
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withSizeInGb(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"size_in_gb" expected to be of type "number"';
    {
      size_in_gb: converted,
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
