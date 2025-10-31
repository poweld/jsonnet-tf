{
  local block = self,
  new(terraformName, portfolioId, principalArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicecatalog_principal_portfolio_association",
          type:: "resource",
          attributes:: ["accept_language", "id", "portfolio_id", "principal_arn", "principal_type", "region"],
        },
      },
    }
    + block.withPortfolioId(portfolioId)
    + block.withPrincipalArn(principalArn)
  ),
  withAcceptLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"accept_language" expected to be of type "string"';
    {
      accept_language: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPortfolioId(value):: (
    local converted = value;
    assert std.isString(converted) : '"portfolio_id" expected to be of type "string"';
    {
      portfolio_id: converted,
    }
  ),
  withPrincipalArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_arn" expected to be of type "string"';
    {
      principal_arn: converted,
    }
  ),
  withPrincipalType(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_type" expected to be of type "string"';
    {
      principal_type: converted,
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
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
