{
  local block = self,
  new(terraformName, domainIdentifier, name, owningProjectIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datazone_glossary",
          type:: "resource",
          attributes:: ["description", "domain_identifier", "id", "name", "owning_project_identifier", "region", "status"],
        },
      },
    }
    + block.withDomainIdentifier(domainIdentifier)
    + block.withName(name)
    + block.withOwningProjectIdentifier(owningProjectIdentifier)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDomainIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_identifier" expected to be of type "string"';
    {
      domain_identifier: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOwningProjectIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"owning_project_identifier" expected to be of type "string"';
    {
      owning_project_identifier: converted,
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
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
