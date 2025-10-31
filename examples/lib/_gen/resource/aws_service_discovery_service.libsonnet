{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_service_discovery_service",
          type:: "resource",
          attributes:: ["arn", "description", "force_destroy", "id", "name", "namespace_id", "region", "tags", "tags_all", "type"],
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
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
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
  withNamespaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_id" expected to be of type "string"';
    {
      namespace_id: converted,
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
  dns_config:: {
    local block = self,
    new(namespaceId):: (
      {}
      + block.withNamespaceId(namespaceId)
    ),
    withNamespaceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace_id" expected to be of type "string"';
      {
        namespace_id: converted,
      }
    ),
    withRoutingPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"routing_policy" expected to be of type "string"';
      {
        routing_policy: converted,
      }
    ),
    dns_records:: {
      local block = self,
      new(ttl, type):: (
        {}
        + block.withTtl(ttl)
        + block.withType(type)
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
    },
    withDnsRecords(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_records: value,
      }
    ),
    withDnsRecordsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_records+: converted,
      }
    ),
  },
  health_check_config:: {
    local block = self,
    new():: (
      {}
    ),
    withFailureThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_threshold" expected to be of type "number"';
      {
        failure_threshold: converted,
      }
    ),
    withResourcePath(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_path" expected to be of type "string"';
      {
        resource_path: converted,
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
  health_check_custom_config:: {
    local block = self,
    new():: (
      {}
    ),
    withFailureThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_threshold" expected to be of type "number"';
      {
        failure_threshold: converted,
      }
    ),
  },
  withDnsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dns_config: value,
    }
  ),
  withHealthCheckConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_config: value,
    }
  ),
  withHealthCheckCustomConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_custom_config: value,
    }
  ),
  withDnsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dns_config+: converted,
    }
  ),
  withHealthCheckConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_config+: converted,
    }
  ),
  withHealthCheckCustomConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_custom_config+: converted,
    }
  ),
}
