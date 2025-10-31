{
  local block = self,
  new(terraformName, certificateId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_certificate",
          type:: "resource",
          attributes:: ["certificate_arn", "certificate_id", "certificate_pem", "certificate_wallet", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withCertificateId(certificateId)
  ),
  withCertificateId(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_id" expected to be of type "string"';
    {
      certificate_id: converted,
    }
  ),
  withCertificatePem(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_pem" expected to be of type "string"';
    {
      certificate_pem: converted,
    }
  ),
  withCertificateWallet(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_wallet" expected to be of type "string"';
    {
      certificate_wallet: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
