{
  local block = self,
  new(terraformName, database, sql):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshiftdata_statement",
          type:: "resource",
          attributes:: ["cluster_identifier", "database", "db_user", "id", "region", "secret_arn", "sql", "statement_name", "with_event", "workgroup_name"],
        },
      },
    }
    + block.withDatabase(database)
    + block.withSql(sql)
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withDatabase(value):: (
    local converted = value;
    assert std.isString(converted) : '"database" expected to be of type "string"';
    {
      database: converted,
    }
  ),
  withDbUser(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_user" expected to be of type "string"';
    {
      db_user: converted,
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
  withSecretArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
    {
      secret_arn: converted,
    }
  ),
  withSql(value):: (
    local converted = value;
    assert std.isString(converted) : '"sql" expected to be of type "string"';
    {
      sql: converted,
    }
  ),
  withStatementName(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_name" expected to be of type "string"';
    {
      statement_name: converted,
    }
  ),
  withWithEvent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"with_event" expected to be of type "bool"';
    {
      with_event: converted,
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
  parameters:: {
    local block = self,
    new(name, value):: (
      {}
      + block.withName(name)
      + block.withValue(value)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
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
  },
  withParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters+: converted,
    }
  ),
}
