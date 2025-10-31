{
  local block = self,
  new(terraformName, name, tier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_resiliencehub_resiliency_policy",
          type:: "resource",
          attributes:: ["arn", "data_location_constraint", "description", "estimated_cost_tier", "name", "region", "tags", "tags_all", "tier"],
        },
      },
    }
    + block.withName(name)
    + block.withTier(tier)
  ),
  "#withDataLocationConstraint":: "Specifies a high-level geographical location constraint for where resilience policy data can be stored.",
  withDataLocationConstraint(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_location_constraint" expected to be of type "string"';
    {
      data_location_constraint: converted,
    }
  ),
  "#withDescription":: "The description for the policy.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withName":: "The name of the policy.",
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
  "#withTier":: "The tier for the resiliency policy, ranging from the highest severity (MissionCritical) to lowest (NonCritical).",
  withTier(value):: (
    local converted = value;
    assert std.isString(converted) : '"tier" expected to be of type "string"';
    {
      tier: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  policy:: {
    local block = self,
    new():: (
      {}
    ),
    az:: {
      local block = self,
      new(rpo, rto):: (
        {}
        + block.withRpo(rpo)
        + block.withRto(rto)
      ),
      "#withRpo":: "Recovery Point Objective (RPO) as a Go duration.",
      withRpo(value):: (
        local converted = value;
        assert std.isString(converted) : '"rpo" expected to be of type "string"';
        {
          rpo: converted,
        }
      ),
      "#withRto":: "Recovery Time Objective (RTO) as a Go duration.",
      withRto(value):: (
        local converted = value;
        assert std.isString(converted) : '"rto" expected to be of type "string"';
        {
          rto: converted,
        }
      ),
    },
    hardware:: {
      local block = self,
      new(rpo, rto):: (
        {}
        + block.withRpo(rpo)
        + block.withRto(rto)
      ),
      "#withRpo":: "Recovery Point Objective (RPO) as a Go duration.",
      withRpo(value):: (
        local converted = value;
        assert std.isString(converted) : '"rpo" expected to be of type "string"';
        {
          rpo: converted,
        }
      ),
      "#withRto":: "Recovery Time Objective (RTO) as a Go duration.",
      withRto(value):: (
        local converted = value;
        assert std.isString(converted) : '"rto" expected to be of type "string"';
        {
          rto: converted,
        }
      ),
    },
    region:: {
      local block = self,
      new():: (
        {}
      ),
      "#withRpo":: "Recovery Point Objective (RPO) as a Go duration.",
      withRpo(value):: (
        local converted = value;
        assert std.isString(converted) : '"rpo" expected to be of type "string"';
        {
          rpo: converted,
        }
      ),
      "#withRto":: "Recovery Time Objective (RTO) as a Go duration.",
      withRto(value):: (
        local converted = value;
        assert std.isString(converted) : '"rto" expected to be of type "string"';
        {
          rto: converted,
        }
      ),
    },
    software:: {
      local block = self,
      new(rpo, rto):: (
        {}
        + block.withRpo(rpo)
        + block.withRto(rto)
      ),
      "#withRpo":: "Recovery Point Objective (RPO) as a Go duration.",
      withRpo(value):: (
        local converted = value;
        assert std.isString(converted) : '"rpo" expected to be of type "string"';
        {
          rpo: converted,
        }
      ),
      "#withRto":: "Recovery Time Objective (RTO) as a Go duration.",
      withRto(value):: (
        local converted = value;
        assert std.isString(converted) : '"rto" expected to be of type "string"';
        {
          rto: converted,
        }
      ),
    },
    withAz(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        az: value,
      }
    ),
    withHardware(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        hardware: value,
      }
    ),
    withRegion(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region: value,
      }
    ),
    withSoftware(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        software: value,
      }
    ),
    withAzMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        az+: converted,
      }
    ),
    withHardwareMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        hardware+: converted,
      }
    ),
    withRegionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region+: converted,
      }
    ),
    withSoftwareMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        software+: converted,
      }
    ),
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
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy+: converted,
    }
  ),
}
