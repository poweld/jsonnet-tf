{
  local block = self,
  new(terraformName, capacityBlockOfferingId, instancePlatform):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_capacity_block_reservation",
          type:: "resource",
          attributes:: ["arn", "availability_zone", "capacity_block_offering_id", "created_date", "ebs_optimized", "end_date", "end_date_type", "id", "instance_count", "instance_platform", "instance_type", "outpost_arn", "placement_group_arn", "region", "reservation_type", "start_date", "tags", "tags_all", "tenancy"],
        },
      },
    }
    + block.withCapacityBlockOfferingId(capacityBlockOfferingId)
    + block.withInstancePlatform(instancePlatform)
  ),
  withCapacityBlockOfferingId(value):: (
    local converted = value;
    assert std.isString(converted) : '"capacity_block_offering_id" expected to be of type "string"';
    {
      capacity_block_offering_id: converted,
    }
  ),
  withInstancePlatform(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_platform" expected to be of type "string"';
    {
      instance_platform: converted,
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
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
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
