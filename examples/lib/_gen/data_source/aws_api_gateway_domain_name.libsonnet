{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_domain_name",
          type:: "data",
          attributes:: ["arn", "certificate_arn", "certificate_name", "certificate_upload_date", "cloudfront_domain_name", "cloudfront_zone_id", "domain_name", "domain_name_id", "endpoint_configuration", "id", "policy", "region", "regional_certificate_arn", "regional_certificate_name", "regional_domain_name", "regional_zone_id", "security_policy", "tags"],
        },
      },
    }
    + block.withDomainName(domainName)
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withDomainNameId(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name_id" expected to be of type "string"';
    {
      domain_name_id: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
