{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_media_convert_queue",
          type:: "resource",
          attributes:: ["arn", "concurrent_jobs", "description", "id", "name", "pricing_plan", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withConcurrentJobs(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"concurrent_jobs" expected to be of type "number"';
    {
      concurrent_jobs: converted,
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPricingPlan(value):: (
    local converted = value;
    assert std.isString(converted) : '"pricing_plan" expected to be of type "string"';
    {
      pricing_plan: converted,
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
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  reservation_plan_settings:: {
    local block = self,
    new(commitment, renewalType, reservedSlots):: (
      {}
      + block.withCommitment(commitment)
      + block.withRenewalType(renewalType)
      + block.withReservedSlots(reservedSlots)
    ),
    withCommitment(value):: (
      local converted = value;
      assert std.isString(converted) : '"commitment" expected to be of type "string"';
      {
        commitment: converted,
      }
    ),
    withRenewalType(value):: (
      local converted = value;
      assert std.isString(converted) : '"renewal_type" expected to be of type "string"';
      {
        renewal_type: converted,
      }
    ),
    withReservedSlots(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"reserved_slots" expected to be of type "number"';
      {
        reserved_slots: converted,
      }
    ),
  },
  withReservationPlanSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reservation_plan_settings: value,
    }
  ),
  withReservationPlanSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reservation_plan_settings+: converted,
    }
  ),
}
