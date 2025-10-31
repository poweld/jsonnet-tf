{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_document",
          type:: "data",
          attributes:: ["arn", "content", "document_format", "document_type", "document_version", "id", "name", "region"],
        },
      },
    }
    + block.withName(name)
  ),
  withDocumentFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_format" expected to be of type "string"';
    {
      document_format: converted,
    }
  ),
  withDocumentVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_version" expected to be of type "string"';
    {
      document_version: converted,
    }
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
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
