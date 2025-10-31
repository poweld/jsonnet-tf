{
  local block = self,
  new(terraformName, document, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_traffic_policy",
          type:: "resource",
          attributes:: ["arn", "comment", "document", "id", "name", "type", "version"],
        },
      },
    }
    + block.withDocument(document)
    + block.withName(name)
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withDocument(value):: (
    local converted = value;
    assert std.isString(converted) : '"document" expected to be of type "string"';
    {
      document: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
