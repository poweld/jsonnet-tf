{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_event_endpoint",
          type:: "resource",
          attributes:: ["arn", "description", "endpoint_url", "id", "name", "region", "role_arn"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  event_bus:: {
    local block = self,
    new(eventBusArn):: (
      {}
      + block.withEventBusArn(eventBusArn)
    ),
    withEventBusArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_bus_arn" expected to be of type "string"';
      {
        event_bus_arn: converted,
      }
    ),
  },
  replication_config:: {
    local block = self,
    new():: (
      {}
    ),
    withState(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  routing_config:: {
    local block = self,
    new():: (
      {}
    ),
    failover_config:: {
      local block = self,
      new():: (
        {}
      ),
      primary:: {
        local block = self,
        new():: (
          {}
        ),
        withHealthCheck(value):: (
          local converted = value;
          assert std.isString(converted) : '"health_check" expected to be of type "string"';
          {
            health_check: converted,
          }
        ),
      },
      secondary:: {
        local block = self,
        new():: (
          {}
        ),
        withRoute(value):: (
          local converted = value;
          assert std.isString(converted) : '"route" expected to be of type "string"';
          {
            route: converted,
          }
        ),
      },
      withPrimary(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          primary: value,
        }
      ),
      withSecondary(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          secondary: value,
        }
      ),
      withPrimaryMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          primary+: converted,
        }
      ),
      withSecondaryMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          secondary+: converted,
        }
      ),
    },
    withFailoverConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failover_config: value,
      }
    ),
    withFailoverConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failover_config+: converted,
      }
    ),
  },
  withEventBus(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_bus: value,
    }
  ),
  withReplicationConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_config: value,
    }
  ),
  withRoutingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_config: value,
    }
  ),
  withEventBusMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_bus+: converted,
    }
  ),
  withReplicationConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_config+: converted,
    }
  ),
  withRoutingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_config+: converted,
    }
  ),
}
