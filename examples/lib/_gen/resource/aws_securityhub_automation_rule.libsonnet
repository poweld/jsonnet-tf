{
  local block = self,
  new(terraformName, description, ruleName, ruleOrder):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securityhub_automation_rule",
          type:: "resource",
          attributes:: ["arn", "description", "id", "is_terminal", "region", "rule_name", "rule_order", "rule_status", "tags", "tags_all"],
        },
      },
    }
    + block.withDescription(description)
    + block.withRuleName(ruleName)
    + block.withRuleOrder(ruleOrder)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withIsTerminal(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_terminal" expected to be of type "bool"';
    {
      is_terminal: converted,
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
  withRuleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_name" expected to be of type "string"';
    {
      rule_name: converted,
    }
  ),
  withRuleOrder(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rule_order" expected to be of type "number"';
    {
      rule_order: converted,
    }
  ),
  withRuleStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_status" expected to be of type "string"';
    {
      rule_status: converted,
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
  actions:: {
    local block = self,
    new():: (
      {}
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    finding_fields_update:: {
      local block = self,
      new():: (
        {}
      ),
      withConfidence(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"confidence" expected to be of type "number"';
        {
          confidence: converted,
        }
      ),
      withCriticality(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"criticality" expected to be of type "number"';
        {
          criticality: converted,
        }
      ),
      withTypes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"types" expected to be of type "list"';
        {
          types: converted,
        }
      ),
      withTypesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"types" expected to be of type "list"';
        {
          types+: converted,
        }
      ),
      withUserDefinedFields(value):: (
        local converted = value;
        assert std.isObject(converted) : '"user_defined_fields" expected to be of type "map"';
        {
          user_defined_fields: converted,
        }
      ),
      withVerificationState(value):: (
        local converted = value;
        assert std.isString(converted) : '"verification_state" expected to be of type "string"';
        {
          verification_state: converted,
        }
      ),
      note:: {
        local block = self,
        new(text, updatedBy):: (
          {}
          + block.withText(text)
          + block.withUpdatedBy(updatedBy)
        ),
        withText(value):: (
          local converted = value;
          assert std.isString(converted) : '"text" expected to be of type "string"';
          {
            text: converted,
          }
        ),
        withUpdatedBy(value):: (
          local converted = value;
          assert std.isString(converted) : '"updated_by" expected to be of type "string"';
          {
            updated_by: converted,
          }
        ),
      },
      related_findings:: {
        local block = self,
        new(id, productArn):: (
          {}
          + block.withId(id)
          + block.withProductArn(productArn)
        ),
        withId(value):: (
          local converted = value;
          assert std.isString(converted) : '"id" expected to be of type "string"';
          {
            id: converted,
          }
        ),
        withProductArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"product_arn" expected to be of type "string"';
          {
            product_arn: converted,
          }
        ),
      },
      severity:: {
        local block = self,
        new():: (
          {}
        ),
        withLabel(value):: (
          local converted = value;
          assert std.isString(converted) : '"label" expected to be of type "string"';
          {
            label: converted,
          }
        ),
        withProduct(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"product" expected to be of type "number"';
          {
            product: converted,
          }
        ),
      },
      workflow:: {
        local block = self,
        new():: (
          {}
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      withNote(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          note: value,
        }
      ),
      withRelatedFindings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          related_findings: value,
        }
      ),
      withSeverity(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          severity: value,
        }
      ),
      withWorkflow(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          workflow: value,
        }
      ),
      withNoteMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          note+: converted,
        }
      ),
      withRelatedFindingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          related_findings+: converted,
        }
      ),
      withSeverityMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          severity+: converted,
        }
      ),
      withWorkflowMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          workflow+: converted,
        }
      ),
    },
    withFindingFieldsUpdate(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_fields_update: value,
      }
    ),
    withFindingFieldsUpdateMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_fields_update+: converted,
      }
    ),
  },
  criteria:: {
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
    aws_account_name:: {
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
    compliance_associated_standards_id:: {
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
    compliance_security_control_id:: {
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
        assert std.isNumber(converted) : '"eq" expected to be of type "number"';
        {
          eq: converted,
        }
      ),
      withGt(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gt" expected to be of type "number"';
        {
          gt: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gte" expected to be of type "number"';
        {
          gte: converted,
        }
      ),
      withLt(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lt" expected to be of type "number"';
        {
          lt: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lte" expected to be of type "number"';
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
        assert std.isNumber(converted) : '"eq" expected to be of type "number"';
        {
          eq: converted,
        }
      ),
      withGt(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gt" expected to be of type "number"';
        {
          gt: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"gte" expected to be of type "number"';
        {
          gte: converted,
        }
      ),
      withLt(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lt" expected to be of type "number"';
        {
          lt: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lte" expected to be of type "number"';
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
    resource_application_arn:: {
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
    resource_application_name:: {
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
    user_defined_fields:: {
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
    withAwsAccountName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_name: value,
      }
    ),
    withCompanyName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        company_name: value,
      }
    ),
    withComplianceAssociatedStandardsId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_associated_standards_id: value,
      }
    ),
    withComplianceSecurityControlId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_security_control_id: value,
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
    withLastObservedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at: value,
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
    withProductArn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_arn: value,
      }
    ),
    withProductName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_name: value,
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
    withResourceApplicationArn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_application_arn: value,
      }
    ),
    withResourceApplicationName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_application_name: value,
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
    withUserDefinedFields(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_defined_fields: value,
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
    withAwsAccountNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_name+: converted,
      }
    ),
    withCompanyNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        company_name+: converted,
      }
    ),
    withComplianceAssociatedStandardsIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_associated_standards_id+: converted,
      }
    ),
    withComplianceSecurityControlIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        compliance_security_control_id+: converted,
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
    withLastObservedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at+: converted,
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
    withProductArnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_arn+: converted,
      }
    ),
    withProductNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        product_name+: converted,
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
    withResourceApplicationArnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_application_arn+: converted,
      }
    ),
    withResourceApplicationNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_application_name+: converted,
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
    withUserDefinedFieldsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_defined_fields+: converted,
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
  withActions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions: value,
    }
  ),
  withCriteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      criteria: value,
    }
  ),
  withActionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions+: converted,
    }
  ),
  withCriteriaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      criteria+: converted,
    }
  ),
}
