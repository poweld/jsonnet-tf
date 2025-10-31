{
  local block = self,
  new(terraformName, activate, detectorId, format, location, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_guardduty_ipset",
          type:: "resource",
          attributes:: ["activate", "arn", "detector_id", "format", "id", "location", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withActivate(activate)
    + block.withDetectorId(detectorId)
    + block.withFormat(format)
    + block.withLocation(location)
    + block.withName(name)
  ),
  withActivate(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"activate" expected to be of type "bool"';
    {
      activate: converted,
    }
  ),
  withDetectorId(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
    }
  ),
  withFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"format" expected to be of type "string"';
    {
      format: converted,
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
