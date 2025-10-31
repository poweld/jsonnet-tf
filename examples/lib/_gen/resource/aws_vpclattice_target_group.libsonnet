{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpclattice_target_group",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "status", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  config:: {
    local block = self,
    new():: (
      {}
    ),
    withIpAddressType(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    withLambdaEventStructureVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda_event_structure_version" expected to be of type "string"';
      {
        lambda_event_structure_version: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
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
    withProtocolVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol_version" expected to be of type "string"';
      {
        protocol_version: converted,
      }
    ),
    withVpcIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_identifier" expected to be of type "string"';
      {
        vpc_identifier: converted,
      }
    ),
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
      withHealthCheckIntervalSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"health_check_interval_seconds" expected to be of type "number"';
        {
          health_check_interval_seconds: converted,
        }
      ),
      withHealthCheckTimeoutSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"health_check_timeout_seconds" expected to be of type "number"';
        {
          health_check_timeout_seconds: converted,
        }
      ),
      withHealthyThresholdCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"healthy_threshold_count" expected to be of type "number"';
        {
          healthy_threshold_count: converted,
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
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
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
      withProtocolVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"protocol_version" expected to be of type "string"';
        {
          protocol_version: converted,
        }
      ),
      withUnhealthyThresholdCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"unhealthy_threshold_count" expected to be of type "number"';
        {
          unhealthy_threshold_count: converted,
        }
      ),
      matcher:: {
        local block = self,
        new():: (
          {}
        ),
        withValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      withMatcher(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          matcher: value,
        }
      ),
      withMatcherMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          matcher+: converted,
        }
      ),
    },
    withHealthCheck(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        health_check: value,
      }
    ),
    withHealthCheckMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        health_check+: converted,
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
  withConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config+: converted,
    }
  ),
}
