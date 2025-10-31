{
  local block = self,
  new(terraformName, zoneId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_records_exclusive",
          type:: "resource",
          attributes:: ["zone_id"],
        },
      },
    }
    + block.withZoneId(zoneId)
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
  resource_record_set:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withFailover(value):: (
      local converted = value;
      assert std.isString(converted) : '"failover" expected to be of type "string"';
      {
        failover: converted,
      }
    ),
    withHealthCheckId(value):: (
      local converted = value;
      assert std.isString(converted) : '"health_check_id" expected to be of type "string"';
      {
        health_check_id: converted,
      }
    ),
    withMultiValueAnswer(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"multi_value_answer" expected to be of type "bool"';
      {
        multi_value_answer: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    withSetIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"set_identifier" expected to be of type "string"';
      {
        set_identifier: converted,
      }
    ),
    withTrafficPolicyInstanceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"traffic_policy_instance_id" expected to be of type "string"';
      {
        traffic_policy_instance_id: converted,
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
    withWeight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
    alias_target:: {
      local block = self,
      new(dnsName, evaluateTargetHealth, hostedZoneId):: (
        {}
        + block.withDnsName(dnsName)
        + block.withEvaluateTargetHealth(evaluateTargetHealth)
        + block.withHostedZoneId(hostedZoneId)
      ),
      withDnsName(value):: (
        local converted = value;
        assert std.isString(converted) : '"dns_name" expected to be of type "string"';
        {
          dns_name: converted,
        }
      ),
      withEvaluateTargetHealth(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"evaluate_target_health" expected to be of type "bool"';
        {
          evaluate_target_health: converted,
        }
      ),
      withHostedZoneId(value):: (
        local converted = value;
        assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
        {
          hosted_zone_id: converted,
        }
      ),
    },
    cidr_routing_config:: {
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
    geolocation:: {
      local block = self,
      new():: (
        {}
      ),
      withContinentCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"continent_code" expected to be of type "string"';
        {
          continent_code: converted,
        }
      ),
      withCountryCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"country_code" expected to be of type "string"';
        {
          country_code: converted,
        }
      ),
      withSubdivisionCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"subdivision_code" expected to be of type "string"';
        {
          subdivision_code: converted,
        }
      ),
    },
    geoproximity_location:: {
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
    resource_records:: {
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
    withAliasTarget(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        alias_target: value,
      }
    ),
    withCidrRoutingConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cidr_routing_config: value,
      }
    ),
    withGeolocation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geolocation: value,
      }
    ),
    withGeoproximityLocation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geoproximity_location: value,
      }
    ),
    withResourceRecords(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_records: value,
      }
    ),
    withAliasTargetMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        alias_target+: converted,
      }
    ),
    withCidrRoutingConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cidr_routing_config+: converted,
      }
    ),
    withGeolocationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geolocation+: converted,
      }
    ),
    withGeoproximityLocationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geoproximity_location+: converted,
      }
    ),
    withResourceRecordsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_records+: converted,
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
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withResourceRecordSet(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_record_set: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withResourceRecordSetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_record_set+: converted,
    }
  ),
}
