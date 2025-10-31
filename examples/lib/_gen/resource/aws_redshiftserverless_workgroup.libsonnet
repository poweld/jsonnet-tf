{
  local block = self,
  new(terraformName, namespaceName, workgroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshiftserverless_workgroup",
          type:: "resource",
          attributes:: ["arn", "base_capacity", "endpoint", "enhanced_vpc_routing", "id", "max_capacity", "namespace_name", "port", "publicly_accessible", "region", "security_group_ids", "subnet_ids", "tags", "tags_all", "track_name", "workgroup_id", "workgroup_name"],
        },
      },
    }
    + block.withNamespaceName(namespaceName)
    + block.withWorkgroupName(workgroupName)
  ),
  withBaseCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"base_capacity" expected to be of type "number"';
    {
      base_capacity: converted,
    }
  ),
  withEnhancedVpcRouting(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enhanced_vpc_routing" expected to be of type "bool"';
    {
      enhanced_vpc_routing: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
    {
      max_capacity: converted,
    }
  ),
  withNamespaceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_name" expected to be of type "string"';
    {
      namespace_name: converted,
    }
  ),
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  withPubliclyAccessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  withSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  withSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  withTrackName(value):: (
    local converted = value;
    assert std.isString(converted) : '"track_name" expected to be of type "string"';
    {
      track_name: converted,
    }
  ),
  withWorkgroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup_name" expected to be of type "string"';
    {
      workgroup_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  config_parameter:: {
    local block = self,
    new(parameterKey, parameterValue):: (
      {}
      + block.withParameterKey(parameterKey)
      + block.withParameterValue(parameterValue)
    ),
    withParameterKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"parameter_key" expected to be of type "string"';
      {
        parameter_key: converted,
      }
    ),
    withParameterValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
      {
        parameter_value: converted,
      }
    ),
  },
  price_performance_target:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withLevel(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"level" expected to be of type "number"';
      {
        level: converted,
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
  withConfigParameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config_parameter: value,
    }
  ),
  withPricePerformanceTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      price_performance_target: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConfigParameterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config_parameter+: converted,
    }
  ),
  withPricePerformanceTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      price_performance_target+: converted,
    }
  ),
}
