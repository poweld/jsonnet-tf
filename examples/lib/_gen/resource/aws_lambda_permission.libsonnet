{
  local block = self,
  new(terraformName, action, functionName, principal):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_permission",
          type:: "resource",
          attributes:: ["action", "event_source_token", "function_name", "function_url_auth_type", "id", "principal", "principal_org_id", "qualifier", "region", "source_account", "source_arn", "statement_id", "statement_id_prefix"],
        },
      },
    }
    + block.withAction(action)
    + block.withFunctionName(functionName)
    + block.withPrincipal(principal)
  ),
  withAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  withEventSourceToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_source_token" expected to be of type "string"';
    {
      event_source_token: converted,
    }
  ),
  withFunctionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  withFunctionUrlAuthType(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_url_auth_type" expected to be of type "string"';
    {
      function_url_auth_type: converted,
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
  withPrincipalOrgId(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_org_id" expected to be of type "string"';
    {
      principal_org_id: converted,
    }
  ),
  withQualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  withSourceAccount(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_account" expected to be of type "string"';
    {
      source_account: converted,
    }
  ),
  withSourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_arn" expected to be of type "string"';
    {
      source_arn: converted,
    }
  ),
  withStatementId(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_id" expected to be of type "string"';
    {
      statement_id: converted,
    }
  ),
  withStatementIdPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_id_prefix" expected to be of type "string"';
    {
      statement_id_prefix: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
