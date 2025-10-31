{
  local block = self,
  new(terraformName, action, layerName, principal, statementId, versionNumber):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_layer_version_permission",
          type:: "resource",
          attributes:: ["action", "id", "layer_name", "organization_id", "policy", "principal", "region", "revision_id", "skip_destroy", "statement_id", "version_number"],
        },
      },
    }
    + block.withAction(action)
    + block.withLayerName(layerName)
    + block.withPrincipal(principal)
    + block.withStatementId(statementId)
    + block.withVersionNumber(versionNumber)
  ),
  withAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLayerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"layer_name" expected to be of type "string"';
    {
      layer_name: converted,
    }
  ),
  withOrganizationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization_id" expected to be of type "string"';
    {
      organization_id: converted,
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
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  withStatementId(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_id" expected to be of type "string"';
    {
      statement_id: converted,
    }
  ),
  withVersionNumber(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version_number" expected to be of type "number"';
    {
      version_number: converted,
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
