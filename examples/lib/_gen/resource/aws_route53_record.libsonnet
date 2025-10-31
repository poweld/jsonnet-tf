{
  local block = self,
  new(terraformName, name, type, zoneId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_record",
          type:: "resource",
          attributes:: ["allow_overwrite", "fqdn", "health_check_id", "id", "multivalue_answer_routing_policy", "name", "records", "set_identifier", "ttl", "type", "zone_id"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
    + block.withZoneId(zoneId)
  ),
  withAllowOverwrite(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_overwrite" expected to be of type "bool"';
    {
      allow_overwrite: converted,
    }
  ),
  withHealthCheckId(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_id" expected to be of type "string"';
    {
      health_check_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMultivalueAnswerRoutingPolicy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multivalue_answer_routing_policy" expected to be of type "bool"';
    {
      multivalue_answer_routing_policy: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withRecords(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"records" expected to be of type "set"';
    {
      records: converted,
    }
  ),
  withRecordsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"records" expected to be of type "set"';
    {
      records+: converted,
    }
  ),
  withSetIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"set_identifier" expected to be of type "string"';
    {
      set_identifier: converted,
    }
  ),
  withTtl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ttl" expected to be of type "number"';
    {
      ttl: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  alias:: {
    local block = self,
    new(evaluateTargetHealth, name, zoneId):: (
      {}
      + block.withEvaluateTargetHealth(evaluateTargetHealth)
      + block.withName(name)
      + block.withZoneId(zoneId)
    ),
    withEvaluateTargetHealth(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
      {
        evaluate_target_health: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withZoneId(value):: (
      local converted = value;
      assert std.isString(converted) : '"zone_id" expected to be of type "string"';
      {
        zone_id: converted,
      }
    ),
  },
  cidr_routing_policy:: {
    local block = self,
    new(collectionId, locationName):: (
      {}
      + block.withCollectionId(collectionId)
      + block.withLocationName(locationName)
    ),
    withCollectionId(value):: (
      local converted = value;
      assert std.isString(converted) : '"collection_id" expected to be of type "string"';
      {
        collection_id: converted,
      }
    ),
    withLocationName(value):: (
      local converted = value;
      assert std.isString(converted) : '"location_name" expected to be of type "string"';
      {
        location_name: converted,
      }
    ),
  },
  failover_routing_policy:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  geolocation_routing_policy:: {
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
    withSubdivision(value):: (
      local converted = value;
      assert std.isString(converted) : '"subdivision" expected to be of type "string"';
      {
        subdivision: converted,
      }
    ),
  },
  geoproximity_routing_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withAwsRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"aws_region" expected to be of type "string"';
      {
        aws_region: converted,
      }
    ),
    withBias(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bias" expected to be of type "number"';
      {
        bias: converted,
      }
    ),
    withLocalZoneGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"local_zone_group" expected to be of type "string"';
      {
        local_zone_group: converted,
      }
    ),
    coordinates:: {
      local block = self,
      new(latitude, longitude):: (
        {}
        + block.withLatitude(latitude)
        + block.withLongitude(longitude)
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
    },
    withCoordinates(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        coordinates: value,
      }
    ),
    withCoordinatesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        coordinates+: converted,
      }
    ),
  },
  latency_routing_policy:: {
    local block = self,
    new(region):: (
      {}
      + block.withRegion(region)
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
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
  weighted_routing_policy:: {
    local block = self,
    new(weight):: (
      {}
      + block.withWeight(weight)
    ),
    withWeight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  withAlias(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alias: value,
    }
  ),
  withCidrRoutingPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_routing_policy: value,
    }
  ),
  withFailoverRoutingPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      failover_routing_policy: value,
    }
  ),
  withGeolocationRoutingPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geolocation_routing_policy: value,
    }
  ),
  withGeoproximityRoutingPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geoproximity_routing_policy: value,
    }
  ),
  withLatencyRoutingPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      latency_routing_policy: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withWeightedRoutingPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      weighted_routing_policy: value,
    }
  ),
  withAliasMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alias+: converted,
    }
  ),
  withCidrRoutingPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_routing_policy+: converted,
    }
  ),
  withFailoverRoutingPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      failover_routing_policy+: converted,
    }
  ),
  withGeolocationRoutingPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geolocation_routing_policy+: converted,
    }
  ),
  withGeoproximityRoutingPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geoproximity_routing_policy+: converted,
    }
  ),
  withLatencyRoutingPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      latency_routing_policy+: converted,
    }
  ),
  withWeightedRoutingPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      weighted_routing_policy+: converted,
    }
  ),
}
