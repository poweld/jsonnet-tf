{
  local block = self,
  new(terraformName, domainIdentifier, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datazone_project",
          type:: "resource",
          attributes:: ["created_at", "created_by", "description", "domain_identifier", "failure_reasons", "glossary_terms", "id", "last_updated_at", "name", "project_status", "region", "skip_deletion_check"],
        },
      },
    }
    + block.withDomainIdentifier(domainIdentifier)
    + block.withName(name)
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
  withGlossaryTerms(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"glossary_terms" expected to be of type "list"';
    {
      glossary_terms: converted,
    }
  ),
  withGlossaryTermsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"glossary_terms" expected to be of type "list"';
    {
      glossary_terms+: converted,
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
  withSkipDeletionCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_deletion_check" expected to be of type "bool"';
    {
      skip_deletion_check: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
