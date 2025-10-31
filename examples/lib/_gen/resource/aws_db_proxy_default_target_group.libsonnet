{
  local block = self,
  new(terraformName, dbProxyName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_proxy_default_target_group",
          type:: "resource",
          attributes:: ["arn", "db_proxy_name", "id", "name", "region"],
        },
      },
    }
    + block.withDbProxyName(dbProxyName)
  ),
  withDbProxyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_proxy_name" expected to be of type "string"';
    {
      db_proxy_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  connection_pool_config:: {
    local block = self,
    new():: (
      {}
    ),
    withConnectionBorrowTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"connection_borrow_timeout" expected to be of type "number"';
      {
        connection_borrow_timeout: converted,
      }
    ),
    withInitQuery(value):: (
      local converted = value;
      assert std.isString(converted) : '"init_query" expected to be of type "string"';
      {
        init_query: converted,
      }
    ),
    withMaxConnectionsPercent(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_connections_percent" expected to be of type "number"';
      {
        max_connections_percent: converted,
      }
    ),
    withMaxIdleConnectionsPercent(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_idle_connections_percent" expected to be of type "number"';
      {
        max_idle_connections_percent: converted,
      }
    ),
    withSessionPinningFilters(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"session_pinning_filters" expected to be of type "set"';
      {
        session_pinning_filters: converted,
      }
    ),
    withSessionPinningFiltersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"session_pinning_filters" expected to be of type "set"';
      {
        session_pinning_filters+: converted,
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
  withConnectionPoolConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_pool_config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConnectionPoolConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_pool_config+: converted,
    }
  ),
}
