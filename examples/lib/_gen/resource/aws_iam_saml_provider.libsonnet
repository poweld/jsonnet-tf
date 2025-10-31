{
  local block = self,
  new(terraformName, name, samlMetadataDocument):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_saml_provider",
          type:: "resource",
          attributes:: ["arn", "id", "name", "saml_metadata_document", "tags", "tags_all", "valid_until"],
        },
      },
    }
    + block.withName(name)
    + block.withSamlMetadataDocument(samlMetadataDocument)
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
  withSamlMetadataDocument(value):: (
    local converted = value;
    assert std.isString(converted) : '"saml_metadata_document" expected to be of type "string"';
    {
      saml_metadata_document: converted,
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
