{
  local block = self,
  new(terraformName, customDomainCertificateArn, customDomainName, workgroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshiftserverless_custom_domain_association",
          type:: "resource",
          attributes:: ["custom_domain_certificate_arn", "custom_domain_certificate_expiry_time", "custom_domain_name", "id", "region", "workgroup_name"],
        },
      },
    }
    + block.withCustomDomainCertificateArn(customDomainCertificateArn)
    + block.withCustomDomainName(customDomainName)
    + block.withWorkgroupName(workgroupName)
  ),
  withCustomDomainCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_domain_certificate_arn" expected to be of type "string"';
    {
      custom_domain_certificate_arn: converted,
    }
  ),
  withCustomDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_domain_name" expected to be of type "string"';
    {
      custom_domain_name: converted,
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
}
