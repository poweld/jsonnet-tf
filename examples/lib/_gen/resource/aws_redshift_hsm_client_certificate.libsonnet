{
  local block = self,
  new(terraformName, hsmClientCertificateIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_hsm_client_certificate",
          type:: "resource",
          attributes:: ["arn", "hsm_client_certificate_identifier", "hsm_client_certificate_public_key", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withHsmClientCertificateIdentifier(hsmClientCertificateIdentifier)
  ),
  withHsmClientCertificateIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"hsm_client_certificate_identifier" expected to be of type "string"';
    {
      hsm_client_certificate_identifier: converted,
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
