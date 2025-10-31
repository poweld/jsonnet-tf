{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_traffic_policy_document",
          type:: "data",
          attributes:: ["id", "json", "record_type", "start_endpoint", "start_rule", "version"],
        },
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withRecordType(value):: (
    local converted = value;
    assert std.isString(converted) : '"record_type" expected to be of type "string"';
    {
      record_type: converted,
    }
  ),
  withStartEndpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_endpoint" expected to be of type "string"';
    {
      start_endpoint: converted,
    }
  ),
  withStartRule(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_rule" expected to be of type "string"';
    {
      start_rule: converted,
    }
  ),
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  endpoint:: {
    local block = self,
    new(id):: (
      {}
      + block.withId(id)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  rule:: {
    local block = self,
    new(id):: (
      {}
      + block.withId(id)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    geo_proximity_location:: {
      local block = self,
      new():: (
        {}
      ),
      withBias(value):: (
        local converted = value;
        assert std.isString(converted) : '"bias" expected to be of type "string"';
        {
          bias: converted,
        }
      ),
      withEndpointReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      withEvaluateTargetHealth(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      withHealthCheck(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      withLatitude(value):: (
        local converted = value;
        assert std.isString(converted) : '"latitude" expected to be of type "string"';
        {
          latitude: converted,
        }
      ),
      withLongitude(value):: (
        local converted = value;
        assert std.isString(converted) : '"longitude" expected to be of type "string"';
        {
          longitude: converted,
        }
      ),
      withRegion(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
      withRuleReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
    },
    items:: {
      local block = self,
      new():: (
        {}
      ),
      withEndpointReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      withHealthCheck(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
    },
    location:: {
      local block = self,
      new():: (
        {}
      ),
      withContinent(value):: (
        local converted = value;
        assert std.isString(converted) : '"continent" expected to be of type "string"';
        {
          continent: converted,
        }
      ),
      withCountry(value):: (
        local converted = value;
        assert std.isString(converted) : '"country" expected to be of type "string"';
        {
          country: converted,
        }
      ),
      withEndpointReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      withEvaluateTargetHealth(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      withHealthCheck(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      withIsDefault(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"is_default" expected to be of type "bool"';
        {
          is_default: converted,
        }
      ),
      withRuleReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
      withSubdivision(value):: (
        local converted = value;
        assert std.isString(converted) : '"subdivision" expected to be of type "string"';
        {
          subdivision: converted,
        }
      ),
    },
    primary:: {
      local block = self,
      new():: (
        {}
      ),
      withEndpointReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      withEvaluateTargetHealth(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      withHealthCheck(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      withRuleReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
    },
    region:: {
      local block = self,
      new():: (
        {}
      ),
      withEndpointReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      withEvaluateTargetHealth(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      withHealthCheck(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      withRegion(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
      withRuleReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
    },
    secondary:: {
      local block = self,
      new():: (
        {}
      ),
      withEndpointReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_reference" expected to be of type "string"';
        {
          endpoint_reference: converted,
        }
      ),
      withEvaluateTargetHealth(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      withHealthCheck(value):: (
        local converted = value;
        assert std.isString(converted) : '"health_check" expected to be of type "string"';
        {
          health_check: converted,
        }
      ),
      withRuleReference(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_reference" expected to be of type "string"';
        {
          rule_reference: converted,
        }
      ),
    },
    withGeoProximityLocation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_proximity_location: value,
      }
    ),
    withItems(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items: value,
      }
    ),
    withLocation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        location: value,
      }
    ),
    withPrimary(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        primary: value,
      }
    ),
    withRegion(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region: value,
      }
    ),
    withSecondary(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secondary: value,
      }
    ),
    withGeoProximityLocationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_proximity_location+: converted,
      }
    ),
    withItemsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items+: converted,
      }
    ),
    withLocationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        location+: converted,
      }
    ),
    withPrimaryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        primary+: converted,
      }
    ),
    withRegionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        region+: converted,
      }
    ),
    withSecondaryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secondary+: converted,
      }
    ),
  },
  withEndpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint: value,
    }
  ),
  withRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  withEndpointMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint+: converted,
    }
  ),
  withRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
