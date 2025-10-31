{
  local block = self,
  new(terraformName, certificateId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_certificate",
          type:: "data",
          attributes:: ["certificate_arn", "certificate_creation_date", "certificate_id", "certificate_owner", "certificate_pem", "certificate_wallet", "id", "key_length", "region", "signing_algorithm", "tags", "valid_from_date", "valid_to_date"],
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
