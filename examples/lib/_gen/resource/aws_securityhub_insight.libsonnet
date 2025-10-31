{
  local block = self,
  new(terraformName, groupByAttribute, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securityhub_insight",
          type:: "resource",
          attributes:: ["arn", "group_by_attribute", "id", "name", "region"],
        },
      },
    }
    + block.withGroupByAttribute(groupByAttribute)
    + block.withName(name)
  ),
  withGroupByAttribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_by_attribute" expected to be of type "string"';
    {
      group_by_attribute: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filters:: {
    local block = self,
    new():: (
      {}
    ),
    aws_account_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    company_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    compliance_status:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    confidence:: {
      local block = self,
      new():: (
        {}
      ),
      withEq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    created_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    criticality:: {
      local block = self,
      new():: (
        {}
      ),
      withEq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    description:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    finding_provider_fields_confidence:: {
      local block = self,
      new():: (
        {}
      ),
      withEq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    finding_provider_fields_criticality:: {
      local block = self,
      new():: (
        {}
      ),
      withEq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    finding_provider_fields_related_findings_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    finding_provider_fields_related_findings_product_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    finding_provider_fields_severity_label:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    finding_provider_fields_severity_original:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    finding_provider_fields_types:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    first_observed_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    generator_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    keyword:: {
      local block = self,
      new(value):: (
        {}
        + block.withValue(value)
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    last_observed_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    malware_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    malware_path:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    malware_state:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    malware_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    network_destination_domain:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    network_destination_ipv4:: {
      local block = self,
      new(cidr):: (
        {}
        + block.withCidr(cidr)
      ),
      withCidr(value):: (
        local converted = value;
        assert std.isString(converted) : '"cidr" expected to be of type "string"';
        {
          cidr: converted,
        }
      ),
    },
    network_destination_ipv6:: {
      local block = self,
      new(cidr):: (
        {}
        + block.withCidr(cidr)
      ),
      withCidr(value):: (
        local converted = value;
        assert std.isString(converted) : '"cidr" expected to be of type "string"';
        {
          cidr: converted,
        }
      ),
    },
    network_destination_port:: {
      local block = self,
      new():: (
        {}
      ),
      withEq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    network_direction:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    network_protocol:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    network_source_domain:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    network_source_ipv4:: {
      local block = self,
      new(cidr):: (
        {}
        + block.withCidr(cidr)
      ),
      withCidr(value):: (
        local converted = value;
        assert std.isString(converted) : '"cidr" expected to be of type "string"';
        {
          cidr: converted,
        }
      ),
    },
    network_source_ipv6:: {
      local block = self,
      new(cidr):: (
        {}
        + block.withCidr(cidr)
      ),
      withCidr(value):: (
        local converted = value;
        assert std.isString(converted) : '"cidr" expected to be of type "string"';
        {
          cidr: converted,
        }
      ),
    },
    network_source_mac:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    network_source_port:: {
      local block = self,
      new():: (
        {}
      ),
      withEq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    note_text:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    note_updated_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    note_updated_by:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    process_launched_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    process_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    process_parent_pid:: {
      local block = self,
      new():: (
        {}
      ),
      withEq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    process_path:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    process_pid:: {
      local block = self,
      new():: (
        {}
      ),
      withEq(value):: (
        local converted = value;
        assert std.isString(converted) : '"eq" expected to be of type "string"';
        {
          eq: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
    },
    process_terminated_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    product_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    product_fields:: {
      local block = self,
      new(comparison, key, value):: (
        {}
        + block.withComparison(comparison)
        + block.withKey(key)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    product_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    recommendation_text:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    record_state:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    related_findings_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    related_findings_product_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_ec2_instance_iam_instance_profile_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_ec2_instance_image_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_ec2_instance_ipv4_addresses:: {
      local block = self,
      new(cidr):: (
        {}
        + block.withCidr(cidr)
      ),
      withCidr(value):: (
        local converted = value;
        assert std.isString(converted) : '"cidr" expected to be of type "string"';
        {
          cidr: converted,
        }
      ),
    },
    resource_aws_ec2_instance_ipv6_addresses:: {
      local block = self,
      new(cidr):: (
        {}
        + block.withCidr(cidr)
      ),
      withCidr(value):: (
        local converted = value;
        assert std.isString(converted) : '"cidr" expected to be of type "string"';
        {
          cidr: converted,
        }
      ),
    },
    resource_aws_ec2_instance_key_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_ec2_instance_launched_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    resource_aws_ec2_instance_subnet_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_ec2_instance_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_ec2_instance_vpc_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_iam_access_key_created_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    resource_aws_iam_access_key_status:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_iam_access_key_user_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_s3_bucket_owner_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_aws_s3_bucket_owner_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_container_image_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_container_image_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_container_launched_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    resource_container_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_details_other:: {
      local block = self,
      new(comparison, key, value):: (
        {}
        + block.withComparison(comparison)
        + block.withKey(key)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_partition:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_region:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_tags:: {
      local block = self,
      new(comparison, key, value):: (
        {}
        + block.withComparison(comparison)
        + block.withKey(key)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    resource_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    severity_label:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    source_url:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    threat_intel_indicator_category:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    threat_intel_indicator_last_observed_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    threat_intel_indicator_source:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    threat_intel_indicator_source_url:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    threat_intel_indicator_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    threat_intel_indicator_value:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    title:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    updated_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEnd(value):: (
        local converted = value;
        assert std.isString(converted) : '"end" expected to be of type "string"';
        {
          end: converted,
        }
      ),
      withStart(value):: (
        local converted = value;
        assert std.isString(converted) : '"start" expected to be of type "string"';
        {
          start: converted,
        }
      ),
      date_range:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDateRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range: value,
        }
      ),
      withDateRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          date_range+: converted,
        }
      ),
    },
    user_defined_values:: {
      local block = self,
      new(comparison, key, value):: (
        {}
        + block.withComparison(comparison)
        + block.withKey(key)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    verification_state:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    workflow_status:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    withAwsAccountId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_id: value,
      }
    ),
    withCompanyName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        company_name: value,
      }
    ),
    withComplianceStatus(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_status: value,
      }
    ),
    withConfidence(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confidence: value,
      }
    ),
    withCreatedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        created_at: value,
      }
    ),
    withCriticality(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        criticality: value,
      }
    ),
    withDescription(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        description: value,
      }
    ),
    withFindingProviderFieldsConfidence(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_confidence: value,
      }
    ),
    withFindingProviderFieldsCriticality(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_criticality: value,
      }
    ),
    withFindingProviderFieldsRelatedFindingsId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_related_findings_id: value,
      }
    ),
    withFindingProviderFieldsRelatedFindingsProductArn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_related_findings_product_arn: value,
      }
    ),
    withFindingProviderFieldsSeverityLabel(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_severity_label: value,
      }
    ),
    withFindingProviderFieldsSeverityOriginal(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_severity_original: value,
      }
    ),
    withFindingProviderFieldsTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_types: value,
      }
    ),
    withFirstObservedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        first_observed_at: value,
      }
    ),
    withGeneratorId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        generator_id: value,
      }
    ),
    withId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        id: value,
      }
    ),
    withKeyword(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        keyword: value,
      }
    ),
    withLastObservedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at: value,
      }
    ),
    withMalwareName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_name: value,
      }
    ),
    withMalwarePath(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_path: value,
      }
    ),
    withMalwareState(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_state: value,
      }
    ),
    withMalwareType(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_type: value,
      }
    ),
    withNetworkDestinationDomain(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_domain: value,
      }
    ),
    withNetworkDestinationIpv4(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_ipv4: value,
      }
    ),
    withNetworkDestinationIpv6(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_ipv6: value,
      }
    ),
    withNetworkDestinationPort(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_port: value,
      }
    ),
    withNetworkDirection(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_direction: value,
      }
    ),
    withNetworkProtocol(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_protocol: value,
      }
    ),
    withNetworkSourceDomain(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_domain: value,
      }
    ),
    withNetworkSourceIpv4(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_ipv4: value,
      }
    ),
    withNetworkSourceIpv6(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_ipv6: value,
      }
    ),
    withNetworkSourceMac(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_mac: value,
      }
    ),
    withNetworkSourcePort(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_port: value,
      }
    ),
    withNoteText(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_text: value,
      }
    ),
    withNoteUpdatedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_updated_at: value,
      }
    ),
    withNoteUpdatedBy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_updated_by: value,
      }
    ),
    withProcessLaunchedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_launched_at: value,
      }
    ),
    withProcessName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_name: value,
      }
    ),
    withProcessParentPid(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_parent_pid: value,
      }
    ),
    withProcessPath(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_path: value,
      }
    ),
    withProcessPid(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_pid: value,
      }
    ),
    withProcessTerminatedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_terminated_at: value,
      }
    ),
    withProductArn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_arn: value,
      }
    ),
    withProductFields(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_fields: value,
      }
    ),
    withProductName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_name: value,
      }
    ),
    withRecommendationText(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recommendation_text: value,
      }
    ),
    withRecordState(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        record_state: value,
      }
    ),
    withRelatedFindingsId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_findings_id: value,
      }
    ),
    withRelatedFindingsProductArn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_findings_product_arn: value,
      }
    ),
    withResourceAwsEc2InstanceIamInstanceProfileArn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_iam_instance_profile_arn: value,
      }
    ),
    withResourceAwsEc2InstanceImageId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_image_id: value,
      }
    ),
    withResourceAwsEc2InstanceIpv4Addresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_ipv4_addresses: value,
      }
    ),
    withResourceAwsEc2InstanceIpv6Addresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_ipv6_addresses: value,
      }
    ),
    withResourceAwsEc2InstanceKeyName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_key_name: value,
      }
    ),
    withResourceAwsEc2InstanceLaunchedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_launched_at: value,
      }
    ),
    withResourceAwsEc2InstanceSubnetId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_subnet_id: value,
      }
    ),
    withResourceAwsEc2InstanceType(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_type: value,
      }
    ),
    withResourceAwsEc2InstanceVpcId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_vpc_id: value,
      }
    ),
    withResourceAwsIamAccessKeyCreatedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_created_at: value,
      }
    ),
    withResourceAwsIamAccessKeyStatus(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_status: value,
      }
    ),
    withResourceAwsIamAccessKeyUserName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_user_name: value,
      }
    ),
    withResourceAwsS3BucketOwnerId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_s3_bucket_owner_id: value,
      }
    ),
    withResourceAwsS3BucketOwnerName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_s3_bucket_owner_name: value,
      }
    ),
    withResourceContainerImageId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_image_id: value,
      }
    ),
    withResourceContainerImageName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_image_name: value,
      }
    ),
    withResourceContainerLaunchedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_launched_at: value,
      }
    ),
    withResourceContainerName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_name: value,
      }
    ),
    withResourceDetailsOther(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_details_other: value,
      }
    ),
    withResourceId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_id: value,
      }
    ),
    withResourcePartition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_partition: value,
      }
    ),
    withResourceRegion(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_region: value,
      }
    ),
    withResourceTags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tags: value,
      }
    ),
    withResourceType(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_type: value,
      }
    ),
    withSeverityLabel(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        severity_label: value,
      }
    ),
    withSourceUrl(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_url: value,
      }
    ),
    withThreatIntelIndicatorCategory(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_category: value,
      }
    ),
    withThreatIntelIndicatorLastObservedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_last_observed_at: value,
      }
    ),
    withThreatIntelIndicatorSource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_source: value,
      }
    ),
    withThreatIntelIndicatorSourceUrl(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_source_url: value,
      }
    ),
    withThreatIntelIndicatorType(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_type: value,
      }
    ),
    withThreatIntelIndicatorValue(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_value: value,
      }
    ),
    withTitle(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        title: value,
      }
    ),
    withType(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        type: value,
      }
    ),
    withUpdatedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        updated_at: value,
      }
    ),
    withUserDefinedValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_defined_values: value,
      }
    ),
    withVerificationState(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        verification_state: value,
      }
    ),
    withWorkflowStatus(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        workflow_status: value,
      }
    ),
    withAwsAccountIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_id+: converted,
      }
    ),
    withCompanyNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        company_name+: converted,
      }
    ),
    withComplianceStatusMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_status+: converted,
      }
    ),
    withConfidenceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confidence+: converted,
      }
    ),
    withCreatedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        created_at+: converted,
      }
    ),
    withCriticalityMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        criticality+: converted,
      }
    ),
    withDescriptionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        description+: converted,
      }
    ),
    withFindingProviderFieldsConfidenceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_confidence+: converted,
      }
    ),
    withFindingProviderFieldsCriticalityMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_criticality+: converted,
      }
    ),
    withFindingProviderFieldsRelatedFindingsIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_related_findings_id+: converted,
      }
    ),
    withFindingProviderFieldsRelatedFindingsProductArnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_related_findings_product_arn+: converted,
      }
    ),
    withFindingProviderFieldsSeverityLabelMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_severity_label+: converted,
      }
    ),
    withFindingProviderFieldsSeverityOriginalMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_severity_original+: converted,
      }
    ),
    withFindingProviderFieldsTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_provider_fields_types+: converted,
      }
    ),
    withFirstObservedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        first_observed_at+: converted,
      }
    ),
    withGeneratorIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        generator_id+: converted,
      }
    ),
    withIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        id+: converted,
      }
    ),
    withKeywordMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        keyword+: converted,
      }
    ),
    withLastObservedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at+: converted,
      }
    ),
    withMalwareNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_name+: converted,
      }
    ),
    withMalwarePathMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_path+: converted,
      }
    ),
    withMalwareStateMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_state+: converted,
      }
    ),
    withMalwareTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_type+: converted,
      }
    ),
    withNetworkDestinationDomainMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_domain+: converted,
      }
    ),
    withNetworkDestinationIpv4Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_ipv4+: converted,
      }
    ),
    withNetworkDestinationIpv6Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_ipv6+: converted,
      }
    ),
    withNetworkDestinationPortMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_destination_port+: converted,
      }
    ),
    withNetworkDirectionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_direction+: converted,
      }
    ),
    withNetworkProtocolMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_protocol+: converted,
      }
    ),
    withNetworkSourceDomainMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_domain+: converted,
      }
    ),
    withNetworkSourceIpv4Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_ipv4+: converted,
      }
    ),
    withNetworkSourceIpv6Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_ipv6+: converted,
      }
    ),
    withNetworkSourceMacMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_mac+: converted,
      }
    ),
    withNetworkSourcePortMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_source_port+: converted,
      }
    ),
    withNoteTextMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_text+: converted,
      }
    ),
    withNoteUpdatedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_updated_at+: converted,
      }
    ),
    withNoteUpdatedByMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        note_updated_by+: converted,
      }
    ),
    withProcessLaunchedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_launched_at+: converted,
      }
    ),
    withProcessNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_name+: converted,
      }
    ),
    withProcessParentPidMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_parent_pid+: converted,
      }
    ),
    withProcessPathMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_path+: converted,
      }
    ),
    withProcessPidMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_pid+: converted,
      }
    ),
    withProcessTerminatedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        process_terminated_at+: converted,
      }
    ),
    withProductArnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_arn+: converted,
      }
    ),
    withProductFieldsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_fields+: converted,
      }
    ),
    withProductNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_name+: converted,
      }
    ),
    withRecommendationTextMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recommendation_text+: converted,
      }
    ),
    withRecordStateMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        record_state+: converted,
      }
    ),
    withRelatedFindingsIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_findings_id+: converted,
      }
    ),
    withRelatedFindingsProductArnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_findings_product_arn+: converted,
      }
    ),
    withResourceAwsEc2InstanceIamInstanceProfileArnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_iam_instance_profile_arn+: converted,
      }
    ),
    withResourceAwsEc2InstanceImageIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_image_id+: converted,
      }
    ),
    withResourceAwsEc2InstanceIpv4AddressesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_ipv4_addresses+: converted,
      }
    ),
    withResourceAwsEc2InstanceIpv6AddressesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_ipv6_addresses+: converted,
      }
    ),
    withResourceAwsEc2InstanceKeyNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_key_name+: converted,
      }
    ),
    withResourceAwsEc2InstanceLaunchedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_launched_at+: converted,
      }
    ),
    withResourceAwsEc2InstanceSubnetIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_subnet_id+: converted,
      }
    ),
    withResourceAwsEc2InstanceTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_type+: converted,
      }
    ),
    withResourceAwsEc2InstanceVpcIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_ec2_instance_vpc_id+: converted,
      }
    ),
    withResourceAwsIamAccessKeyCreatedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_created_at+: converted,
      }
    ),
    withResourceAwsIamAccessKeyStatusMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_status+: converted,
      }
    ),
    withResourceAwsIamAccessKeyUserNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_iam_access_key_user_name+: converted,
      }
    ),
    withResourceAwsS3BucketOwnerIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_s3_bucket_owner_id+: converted,
      }
    ),
    withResourceAwsS3BucketOwnerNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_aws_s3_bucket_owner_name+: converted,
      }
    ),
    withResourceContainerImageIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_image_id+: converted,
      }
    ),
    withResourceContainerImageNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_image_name+: converted,
      }
    ),
    withResourceContainerLaunchedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_launched_at+: converted,
      }
    ),
    withResourceContainerNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_container_name+: converted,
      }
    ),
    withResourceDetailsOtherMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_details_other+: converted,
      }
    ),
    withResourceIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_id+: converted,
      }
    ),
    withResourcePartitionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_partition+: converted,
      }
    ),
    withResourceRegionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_region+: converted,
      }
    ),
    withResourceTagsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tags+: converted,
      }
    ),
    withResourceTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_type+: converted,
      }
    ),
    withSeverityLabelMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        severity_label+: converted,
      }
    ),
    withSourceUrlMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_url+: converted,
      }
    ),
    withThreatIntelIndicatorCategoryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_category+: converted,
      }
    ),
    withThreatIntelIndicatorLastObservedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_last_observed_at+: converted,
      }
    ),
    withThreatIntelIndicatorSourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_source+: converted,
      }
    ),
    withThreatIntelIndicatorSourceUrlMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_source_url+: converted,
      }
    ),
    withThreatIntelIndicatorTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_type+: converted,
      }
    ),
    withThreatIntelIndicatorValueMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        threat_intel_indicator_value+: converted,
      }
    ),
    withTitleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        title+: converted,
      }
    ),
    withTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        type+: converted,
      }
    ),
    withUpdatedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        updated_at+: converted,
      }
    ),
    withUserDefinedValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_defined_values+: converted,
      }
    ),
    withVerificationStateMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        verification_state+: converted,
      }
    ),
    withWorkflowStatusMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        workflow_status+: converted,
      }
    ),
  },
  withFilters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  withFiltersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
}
