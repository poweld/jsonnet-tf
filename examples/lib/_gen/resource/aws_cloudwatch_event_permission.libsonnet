{
  local block = self,
  new(terraformName, principal, statementId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_event_permission",
          type:: "resource",
          attributes:: ["action", "event_bus_name", "id", "principal", "region", "statement_id"],
        },
      },
    }
    + block.withPrincipal(principal)
    + block.withStatementId(statementId)
  ),
  withAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  withEventBusName(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_bus_name" expected to be of type "string"';
    {
      event_bus_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
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
  withStatementId(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_id" expected to be of type "string"';
    {
      statement_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  condition:: {
    local block = self,
    new(key, type, value):: (
      {}
      + block.withKey(key)
      + block.withType(type)
      + block.withValue(value)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  withCondition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition: value,
    }
  ),
  withConditionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition+: converted,
    }
  ),
}
