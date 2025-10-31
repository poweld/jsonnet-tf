{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_alb_target_group",
          type:: "resource",
          attributes:: ["arn", "arn_suffix", "connection_termination", "deregistration_delay", "id", "ip_address_type", "lambda_multi_value_headers_enabled", "load_balancer_arns", "load_balancing_algorithm_type", "load_balancing_anomaly_mitigation", "load_balancing_cross_zone_enabled", "name", "name_prefix", "port", "preserve_client_ip", "protocol", "protocol_version", "proxy_protocol_v2", "region", "slow_start", "tags", "tags_all", "target_type", "vpc_id"],
        },
      },
    }
  ),
  withConnectionTermination(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"connection_termination" expected to be of type "bool"';
    {
      connection_termination: converted,
    }
  ),
  withDeregistrationDelay(value):: (
    local converted = value;
    assert std.isString(converted) : '"deregistration_delay" expected to be of type "string"';
    {
      deregistration_delay: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  withLambdaMultiValueHeadersEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"lambda_multi_value_headers_enabled" expected to be of type "bool"';
    {
      lambda_multi_value_headers_enabled: converted,
    }
  ),
  withLoadBalancingAlgorithmType(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancing_algorithm_type" expected to be of type "string"';
    {
      load_balancing_algorithm_type: converted,
    }
  ),
  withLoadBalancingAnomalyMitigation(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancing_anomaly_mitigation" expected to be of type "string"';
    {
      load_balancing_anomaly_mitigation: converted,
    }
  ),
  withLoadBalancingCrossZoneEnabled(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancing_cross_zone_enabled" expected to be of type "string"';
    {
      load_balancing_cross_zone_enabled: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  withPreserveClientIp(value):: (
    local converted = value;
    assert std.isString(converted) : '"preserve_client_ip" expected to be of type "string"';
    {
      preserve_client_ip: converted,
    }
  ),
  withProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
    }
  ),
  withProtocolVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_version" expected to be of type "string"';
    {
      protocol_version: converted,
    }
  ),
  withProxyProtocolV2(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"proxy_protocol_v2" expected to be of type "bool"';
    {
      proxy_protocol_v2: converted,
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
  withSlowStart(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"slow_start" expected to be of type "number"';
    {
      slow_start: converted,
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
  withTargetType(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_type" expected to be of type "string"';
    {
      target_type: converted,
    }
  ),
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  health_check:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withHealthyThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"healthy_threshold" expected to be of type "number"';
      {
        healthy_threshold: converted,
      }
    ),
    withInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"interval" expected to be of type "number"';
      {
        interval: converted,
      }
    ),
    withMatcher(value):: (
      local converted = value;
      assert std.isString(converted) : '"matcher" expected to be of type "string"';
      {
        matcher: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isString(converted) : '"port" expected to be of type "string"';
      {
        port: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    withTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
      {
        timeout: converted,
      }
    ),
    withUnhealthyThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"unhealthy_threshold" expected to be of type "number"';
      {
        unhealthy_threshold: converted,
      }
    ),
  },
  stickiness:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withCookieDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cookie_duration" expected to be of type "number"';
      {
        cookie_duration: converted,
      }
    ),
    withCookieName(value):: (
      local converted = value;
      assert std.isString(converted) : '"cookie_name" expected to be of type "string"';
      {
        cookie_name: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  target_failover:: {
    local block = self,
    new(onDeregistration, onUnhealthy):: (
      {}
      + block.withOnDeregistration(onDeregistration)
      + block.withOnUnhealthy(onUnhealthy)
    ),
    withOnDeregistration(value):: (
      local converted = value;
      assert std.isString(converted) : '"on_deregistration" expected to be of type "string"';
      {
        on_deregistration: converted,
      }
    ),
    withOnUnhealthy(value):: (
      local converted = value;
      assert std.isString(converted) : '"on_unhealthy" expected to be of type "string"';
      {
        on_unhealthy: converted,
      }
    ),
  },
  target_group_health:: {
    local block = self,
    new():: (
      {}
    ),
    dns_failover:: {
      local block = self,
      new():: (
        {}
      ),
      withMinimumHealthyTargetsCount(value):: (
        local converted = value;
        assert std.isString(converted) : '"minimum_healthy_targets_count" expected to be of type "string"';
        {
          minimum_healthy_targets_count: converted,
        }
      ),
      withMinimumHealthyTargetsPercentage(value):: (
        local converted = value;
        assert std.isString(converted) : '"minimum_healthy_targets_percentage" expected to be of type "string"';
        {
          minimum_healthy_targets_percentage: converted,
        }
      ),
    },
    unhealthy_state_routing:: {
      local block = self,
      new():: (
        {}
      ),
      withMinimumHealthyTargetsCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minimum_healthy_targets_count" expected to be of type "number"';
        {
          minimum_healthy_targets_count: converted,
        }
      ),
      withMinimumHealthyTargetsPercentage(value):: (
        local converted = value;
        assert std.isString(converted) : '"minimum_healthy_targets_percentage" expected to be of type "string"';
        {
          minimum_healthy_targets_percentage: converted,
        }
      ),
    },
    withDnsFailover(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_failover: value,
      }
    ),
    withUnhealthyStateRouting(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unhealthy_state_routing: value,
      }
    ),
    withDnsFailoverMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_failover+: converted,
      }
    ),
    withUnhealthyStateRoutingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unhealthy_state_routing+: converted,
      }
    ),
  },
  target_health_state:: {
    local block = self,
    new(enableUnhealthyConnectionTermination):: (
      {}
      + block.withEnableUnhealthyConnectionTermination(enableUnhealthyConnectionTermination)
    ),
    withEnableUnhealthyConnectionTermination(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_unhealthy_connection_termination" expected to be of type "bool"';
      {
        enable_unhealthy_connection_termination: converted,
      }
    ),
    withUnhealthyDrainingInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"unhealthy_draining_interval" expected to be of type "number"';
      {
        unhealthy_draining_interval: converted,
      }
    ),
  },
  withHealthCheck(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check: value,
    }
  ),
  withStickiness(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stickiness: value,
    }
  ),
  withTargetFailover(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_failover: value,
    }
  ),
  withTargetGroupHealth(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_group_health: value,
    }
  ),
  withTargetHealthState(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_health_state: value,
    }
  ),
  withHealthCheckMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check+: converted,
    }
  ),
  withStickinessMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stickiness+: converted,
    }
  ),
  withTargetFailoverMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_failover+: converted,
    }
  ),
  withTargetGroupHealthMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_group_health+: converted,
    }
  ),
  withTargetHealthStateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_health_state+: converted,
    }
  ),
}
