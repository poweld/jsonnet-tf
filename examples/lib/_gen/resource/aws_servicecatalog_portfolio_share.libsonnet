{
  local block = self,
  new(terraformName, portfolioId, principalId, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicecatalog_portfolio_share",
          type:: "resource",
          attributes:: ["accept_language", "accepted", "id", "portfolio_id", "principal_id", "region", "share_principals", "share_tag_options", "type", "wait_for_acceptance"],
        },
      },
    }
    + block.withPortfolioId(portfolioId)
    + block.withPrincipalId(principalId)
    + block.withType(type)
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
  withPrincipalId(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_id" expected to be of type "string"';
    {
      principal_id: converted,
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
  withSharePrincipals(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"share_principals" expected to be of type "bool"';
    {
      share_principals: converted,
    }
  ),
  withShareTagOptions(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"share_tag_options" expected to be of type "bool"';
    {
      share_tag_options: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withWaitForAcceptance(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_acceptance" expected to be of type "bool"';
    {
      wait_for_acceptance: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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
