{
  local block = self,
  new(terraformName, glossaryIdentifier, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datazone_glossary_term",
          type:: "resource",
          attributes:: ["created_at", "created_by", "domain_identifier", "glossary_identifier", "id", "long_description", "name", "region", "short_description", "status"],
        },
      },
    }
    + block.withGlossaryIdentifier(glossaryIdentifier)
    + block.withName(name)
  ),
  withDomainIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_identifier" expected to be of type "string"';
    {
      domain_identifier: converted,
    }
  ),
  withGlossaryIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"glossary_identifier" expected to be of type "string"';
    {
      glossary_identifier: converted,
    }
  ),
  withLongDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"long_description" expected to be of type "string"';
    {
      long_description: converted,
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
  withShortDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"short_description" expected to be of type "string"';
    {
      short_description: converted,
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
  term_relations:: {
    local block = self,
    new():: (
      {}
    ),
    withClassifies(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"classifies" expected to be of type "set"';
      {
        classifies: converted,
      }
    ),
    withClassifiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"classifies" expected to be of type "set"';
      {
        classifies+: converted,
      }
    ),
    withIsA(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"is_a" expected to be of type "set"';
      {
        is_a: converted,
      }
    ),
    withIsAMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"is_a" expected to be of type "set"';
      {
        is_a+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  withTermRelations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      term_relations: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTermRelationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      term_relations+: converted,
    }
  ),
}
