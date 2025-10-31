{
  local block = self,
  new(terraformName, domainIdentifier, name, owningProjectIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datazone_form_type",
          type:: "resource",
          attributes:: ["created_at", "created_by", "description", "domain_identifier", "imports", "name", "origin_domain_id", "origin_project_id", "owning_project_identifier", "region", "revision", "status"],
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
  model:: {
    local block = self,
    new(smithy):: (
      {}
      + block.withSmithy(smithy)
    ),
    withSmithy(value):: (
      local converted = value;
      assert std.isString(converted) : '"smithy" expected to be of type "string"';
      {
        smithy: converted,
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
  withModel(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      model: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withModelMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      model+: converted,
    }
  ),
}
