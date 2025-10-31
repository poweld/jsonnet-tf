{
  local block = self,
  new(terraformName, availabilityZone):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_host",
          type:: "resource",
          attributes:: ["arn", "asset_id", "auto_placement", "availability_zone", "host_recovery", "id", "instance_family", "instance_type", "outpost_arn", "owner_id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAvailabilityZone(availabilityZone)
  ),
  withAssetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"asset_id" expected to be of type "string"';
    {
      asset_id: converted,
    }
  ),
  withAutoPlacement(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_placement" expected to be of type "string"';
    {
      auto_placement: converted,
    }
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withHostRecovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_recovery" expected to be of type "string"';
    {
      host_recovery: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceFamily(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_family" expected to be of type "string"';
    {
      instance_family: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  withOutpostArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"outpost_arn" expected to be of type "string"';
    {
      outpost_arn: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
