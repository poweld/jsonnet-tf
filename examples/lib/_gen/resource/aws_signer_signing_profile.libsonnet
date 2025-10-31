{
  local block = self,
  new(terraformName, platformId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_signer_signing_profile",
          type:: "resource",
          attributes:: ["arn", "id", "name", "name_prefix", "platform_display_name", "platform_id", "region", "revocation_record", "signing_parameters", "status", "tags", "tags_all", "version", "version_arn"],
        },
      },
    }
    + block.withPlatformId(platformId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPlatformId(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_id" expected to be of type "string"';
    {
      platform_id: converted,
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
  withSigningParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"signing_parameters" expected to be of type "map"';
    {
      signing_parameters: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  signature_validity_period:: {
    local block = self,
    new(type, value):: (
      {}
      + block.withType(type)
      + block.withValue(value)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"value" expected to be of type "number"';
      {
        value: converted,
      }
    ),
  },
  signing_material:: {
    local block = self,
    new(certificateArn):: (
      {}
      + block.withCertificateArn(certificateArn)
    ),
    withCertificateArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
      {
        certificate_arn: converted,
      }
    ),
  },
  withSignatureValidityPeriod(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      signature_validity_period: value,
    }
  ),
  withSigningMaterial(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      signing_material: value,
    }
  ),
  withSignatureValidityPeriodMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      signature_validity_period+: converted,
    }
  ),
  withSigningMaterialMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      signing_material+: converted,
    }
  ),
}
