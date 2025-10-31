{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elb",
          type:: "resource",
          attributes:: ["arn", "availability_zones", "connection_draining", "connection_draining_timeout", "cross_zone_load_balancing", "desync_mitigation_mode", "dns_name", "id", "idle_timeout", "instances", "internal", "name", "name_prefix", "region", "security_groups", "source_security_group", "source_security_group_id", "subnets", "tags", "tags_all", "zone_id"],
        },
      },
    }
  ),
  withAvailabilityZones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  withAvailabilityZonesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  withConnectionDraining(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"connection_draining" expected to be of type "bool"';
    {
      connection_draining: converted,
    }
  ),
  withConnectionDrainingTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"connection_draining_timeout" expected to be of type "number"';
    {
      connection_draining_timeout: converted,
    }
  ),
  withCrossZoneLoadBalancing(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cross_zone_load_balancing" expected to be of type "bool"';
    {
      cross_zone_load_balancing: converted,
    }
  ),
  withDesyncMitigationMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"desync_mitigation_mode" expected to be of type "string"';
    {
      desync_mitigation_mode: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdleTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_timeout" expected to be of type "number"';
    {
      idle_timeout: converted,
    }
  ),
  withInstances(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instances" expected to be of type "set"';
    {
      instances: converted,
    }
  ),
  withInstancesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instances" expected to be of type "set"';
    {
      instances+: converted,
    }
  ),
  withInternal(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"internal" expected to be of type "bool"';
    {
      internal: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSecurityGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  withSecurityGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  withSourceSecurityGroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_security_group" expected to be of type "string"';
    {
      source_security_group: converted,
    }
  ),
  withSubnets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets: converted,
    }
  ),
  withSubnetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets+: converted,
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
  access_logs:: {
    local block = self,
    new(bucket):: (
      {}
      + block.withBucket(bucket)
    ),
    withBucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    withBucketPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
      {
        bucket_prefix: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"interval" expected to be of type "number"';
      {
        interval: converted,
      }
    ),
  },
  health_check:: {
    local block = self,
    new(healthyThreshold, interval, target, timeout, unhealthyThreshold):: (
      {}
      + block.withHealthyThreshold(healthyThreshold)
      + block.withInterval(interval)
      + block.withTarget(target)
      + block.withTimeout(timeout)
      + block.withUnhealthyThreshold(unhealthyThreshold)
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
    withTarget(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
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
  listener:: {
    local block = self,
    new(instancePort, instanceProtocol, lbPort, lbProtocol):: (
      {}
      + block.withInstancePort(instancePort)
      + block.withInstanceProtocol(instanceProtocol)
      + block.withLbPort(lbPort)
      + block.withLbProtocol(lbProtocol)
    ),
    withInstancePort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"instance_port" expected to be of type "number"';
      {
        instance_port: converted,
      }
    ),
    withInstanceProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_protocol" expected to be of type "string"';
      {
        instance_protocol: converted,
      }
    ),
    withLbPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"lb_port" expected to be of type "number"';
      {
        lb_port: converted,
      }
    ),
    withLbProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"lb_protocol" expected to be of type "string"';
      {
        lb_protocol: converted,
      }
    ),
    withSslCertificateId(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_certificate_id" expected to be of type "string"';
      {
        ssl_certificate_id: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAccessLogs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs: value,
    }
  ),
  withHealthCheck(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check: value,
    }
  ),
  withListener(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      listener: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAccessLogsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs+: converted,
    }
  ),
  withHealthCheckMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check+: converted,
    }
  ),
  withListenerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      listener+: converted,
    }
  ),
}
