{
  local block = self,
  new(terraformName, capacityDurationHours, instanceCount, instanceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_capacity_block_offering",
          type:: "data",
          attributes:: ["availability_zone", "capacity_block_offering_id", "capacity_duration_hours", "currency_code", "end_date_range", "instance_count", "instance_type", "region", "start_date_range", "tenancy", "upfront_fee"],
        },
      },
    }
    + block.withCapacityDurationHours(capacityDurationHours)
    + block.withInstanceCount(instanceCount)
    + block.withInstanceType(instanceType)
  ),
  withCapacityDurationHours(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"capacity_duration_hours" expected to be of type "number"';
    {
      capacity_duration_hours: converted,
    }
  ),
  withEndDateRange(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date_range" expected to be of type "string"';
    {
      end_date_range: converted,
    }
  ),
  withInstanceCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
    {
      instance_count: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
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
  withStartDateRange(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_date_range" expected to be of type "string"';
    {
      start_date_range: converted,
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
