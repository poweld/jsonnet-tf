{
  local block = self,
  new(terraformName, clusterId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emr_managed_scaling_policy",
          type:: "resource",
          attributes:: ["cluster_id", "id", "region"],
        },
      },
    }
    + block.withClusterId(clusterId)
  ),
  withClusterId(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  compute_limits:: {
    local block = self,
    new(maximumCapacityUnits, minimumCapacityUnits, unitType):: (
      {}
      + block.withMaximumCapacityUnits(maximumCapacityUnits)
      + block.withMinimumCapacityUnits(minimumCapacityUnits)
      + block.withUnitType(unitType)
    ),
    withMaximumCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_capacity_units" expected to be of type "number"';
      {
        maximum_capacity_units: converted,
      }
    ),
    withMaximumCoreCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_core_capacity_units" expected to be of type "number"';
      {
        maximum_core_capacity_units: converted,
      }
    ),
    withMaximumOndemandCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_ondemand_capacity_units" expected to be of type "number"';
      {
        maximum_ondemand_capacity_units: converted,
      }
    ),
    withMinimumCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_capacity_units" expected to be of type "number"';
      {
        minimum_capacity_units: converted,
      }
    ),
    withUnitType(value):: (
      local converted = value;
      assert std.isString(converted) : '"unit_type" expected to be of type "string"';
      {
        unit_type: converted,
      }
    ),
  },
  withComputeLimits(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_limits: value,
    }
  ),
  withComputeLimitsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_limits+: converted,
    }
  ),
}
