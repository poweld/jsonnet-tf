{
  local block = self,
  new(terraformName, appId, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_amplify_domain_association",
          type:: "resource",
          attributes:: ["app_id", "arn", "certificate_verification_dns_record", "domain_name", "enable_auto_sub_domain", "id", "region", "wait_for_verification"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withDomainName(domainName)
  ),
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withEnableAutoSubDomain(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_auto_sub_domain" expected to be of type "bool"';
    {
      enable_auto_sub_domain: converted,
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
  withWaitForVerification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_verification" expected to be of type "bool"';
    {
      wait_for_verification: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  certificate_settings:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withCustomCertificateArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_certificate_arn" expected to be of type "string"';
      {
        custom_certificate_arn: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  sub_domain:: {
    local block = self,
    new(branchName, prefix):: (
      {}
      + block.withBranchName(branchName)
      + block.withPrefix(prefix)
    ),
    withBranchName(value):: (
      local converted = value;
      assert std.isString(converted) : '"branch_name" expected to be of type "string"';
      {
        branch_name: converted,
      }
    ),
    withPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  withCertificateSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_settings: value,
    }
  ),
  withSubDomain(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sub_domain: value,
    }
  ),
  withCertificateSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_settings+: converted,
    }
  ),
  withSubDomainMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sub_domain+: converted,
    }
  ),
}
