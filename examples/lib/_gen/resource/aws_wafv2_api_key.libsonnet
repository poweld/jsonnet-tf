{
  local block = self,
  new(terraformName, scope, tokenDomains):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_wafv2_api_key",
          type:: "resource",
          attributes:: ["api_key", "region", "scope", "token_domains"],
        },
      },
    }
    + block.withScope(scope)
    + block.withTokenDomains(tokenDomains)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  "#withScope":: "Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL.",
  withScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
    }
  ),
  "#withTokenDomains":: "The domains that you want to be able to use the API key with, for example example.com. Maximum of 5 domains.",
  withTokenDomains(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"token_domains" expected to be of type "set"';
    {
      token_domains: converted,
    }
  ),
  "#withTokenDomainsMixin":: "The domains that you want to be able to use the API key with, for example example.com. Maximum of 5 domains.",
  withTokenDomainsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"token_domains" expected to be of type "set"';
    {
      token_domains+: converted,
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
