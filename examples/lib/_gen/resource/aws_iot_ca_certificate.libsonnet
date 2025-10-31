{
  local block = self,
  new(terraformName, active, allowAutoRegistration, caCertificatePem):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_ca_certificate",
          type:: "resource",
          attributes:: ["active", "allow_auto_registration", "arn", "ca_certificate_pem", "certificate_mode", "customer_version", "generation_id", "id", "region", "tags", "tags_all", "validity", "verification_certificate_pem"],
        },
      },
    }
    + block.withActive(active)
    + block.withAllowAutoRegistration(allowAutoRegistration)
    + block.withCaCertificatePem(caCertificatePem)
  ),
  withActive(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
    {
      active: converted,
    }
  ),
  withAllowAutoRegistration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_auto_registration" expected to be of type "bool"';
    {
      allow_auto_registration: converted,
    }
  ),
  withCaCertificatePem(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificate_pem" expected to be of type "string"';
    {
      ca_certificate_pem: converted,
    }
  ),
  withCertificateMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_mode" expected to be of type "string"';
    {
      certificate_mode: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withVerificationCertificatePem(value):: (
    local converted = value;
    assert std.isString(converted) : '"verification_certificate_pem" expected to be of type "string"';
    {
      verification_certificate_pem: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  registration_config:: {
    local block = self,
    new():: (
      {}
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withTemplateBody(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_body" expected to be of type "string"';
      {
        template_body: converted,
      }
    ),
    withTemplateName(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_name" expected to be of type "string"';
      {
        template_name: converted,
      }
    ),
  },
  withRegistrationConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      registration_config: value,
    }
  ),
  withRegistrationConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      registration_config+: converted,
    }
  ),
}
