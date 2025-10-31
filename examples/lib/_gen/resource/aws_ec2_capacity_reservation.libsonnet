{
  local block = self,
  new(terraformName, availabilityZone, instanceCount, instancePlatform, instanceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_capacity_reservation",
          type:: "resource",
          attributes:: ["arn", "availability_zone", "ebs_optimized", "end_date", "end_date_type", "ephemeral_storage", "id", "instance_count", "instance_match_criteria", "instance_platform", "instance_type", "outpost_arn", "owner_id", "placement_group_arn", "region", "tags", "tags_all", "tenancy"],
        },
      },
    }
    + block.withAvailabilityZone(availabilityZone)
    + block.withInstanceCount(instanceCount)
    + block.withInstancePlatform(instancePlatform)
    + block.withInstanceType(instanceType)
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withEbsOptimized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
    {
      ebs_optimized: converted,
    }
  ),
  withEndDate(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date" expected to be of type "string"';
    {
      end_date: converted,
    }
  ),
  withEndDateType(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date_type" expected to be of type "string"';
    {
      end_date_type: converted,
    }
  ),
  withEphemeralStorage(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ephemeral_storage" expected to be of type "bool"';
    {
      ephemeral_storage: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
    {
      instance_count: converted,
    }
  ),
  withInstanceMatchCriteria(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_match_criteria" expected to be of type "string"';
    {
      instance_match_criteria: converted,
    }
  ),
  withInstancePlatform(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_platform" expected to be of type "string"';
    {
      instance_platform: converted,
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
  withPlacementGroupArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_group_arn" expected to be of type "string"';
    {
      placement_group_arn: converted,
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
  withTenancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"tenancy" expected to be of type "string"';
    {
      tenancy: converted,
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
