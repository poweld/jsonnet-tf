{
  local block = self,
  new(terraformName, domain, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_user_pool_domain",
          type:: "resource",
          attributes:: ["aws_account_id", "certificate_arn", "cloudfront_distribution", "cloudfront_distribution_arn", "cloudfront_distribution_zone_id", "domain", "id", "managed_login_version", "region", "s3_bucket", "user_pool_id", "version"],
        },
      },
    }
    + block.withDomain(domain)
    + block.withUserPoolId(userPoolId)
  ),
  withCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withManagedLoginVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"managed_login_version" expected to be of type "number"';
    {
      managed_login_version: converted,
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
  withUserPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
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
