{
  local block = self,
  new(terraformName, domainIdentifier, name, profileIdentifier, projectIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datazone_environment",
          type:: "resource",
          attributes:: ["account_identifier", "account_region", "blueprint_identifier", "created_at", "created_by", "description", "domain_identifier", "glossary_terms", "id", "last_deployment", "name", "profile_identifier", "project_identifier", "provider_environment", "provisioned_resources", "region"],
        },
      },
    }
    + block.withDomainIdentifier(domainIdentifier)
    + block.withName(name)
    + block.withProfileIdentifier(profileIdentifier)
    + block.withProjectIdentifier(projectIdentifier)
  ),
  withAccountIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_identifier" expected to be of type "string"';
    {
      account_identifier: converted,
    }
  ),
  withAccountRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_region" expected to be of type "string"';
    {
      account_region: converted,
    }
  ),
  withBlueprintIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"blueprint_identifier" expected to be of type "string"';
    {
      blueprint_identifier: converted,
    }
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
  withProfileIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_identifier" expected to be of type "string"';
    {
      profile_identifier: converted,
    }
  ),
  withProjectIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_identifier" expected to be of type "string"';
    {
      project_identifier: converted,
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
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  user_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withUserParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_parameters: value,
    }
  ),
  withUserParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_parameters+: converted,
    }
  ),
}
