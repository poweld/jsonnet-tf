{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_batch_scheduling_policy",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
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
  fair_share_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withComputeReservation(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"compute_reservation" expected to be of type "number"';
      {
        compute_reservation: converted,
      }
    ),
    withShareDecaySeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"share_decay_seconds" expected to be of type "number"';
      {
        share_decay_seconds: converted,
      }
    ),
    share_distribution:: {
      local block = self,
      new(shareIdentifier):: (
        {}
        + block.withShareIdentifier(shareIdentifier)
      ),
      withShareIdentifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"share_identifier" expected to be of type "string"';
        {
          share_identifier: converted,
        }
      ),
      withWeightFactor(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"weight_factor" expected to be of type "number"';
        {
          weight_factor: converted,
        }
      ),
    },
    withShareDistribution(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        share_distribution: value,
      }
    ),
    withShareDistributionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        share_distribution+: converted,
      }
    ),
  },
  withFairSharePolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fair_share_policy: value,
    }
  ),
  withFairSharePolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fair_share_policy+: converted,
    }
  ),
}
