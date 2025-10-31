{
  local block = self,
  new(terraformName, domainIdentifier, name, owningProjectIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datazone_asset_type",
          type:: "resource",
          attributes:: ["created_at", "created_by", "description", "domain_identifier", "name", "owning_project_identifier", "region", "revision"],
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  forms_input:: {
    local block = self,
    new(mapBlockKey, typeIdentifier, typeRevision):: (
      {}
      + block.withMapBlockKey(mapBlockKey)
      + block.withTypeIdentifier(typeIdentifier)
      + block.withTypeRevision(typeRevision)
    ),
    withMapBlockKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
      {
        map_block_key: converted,
      }
    ),
    withRequired(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
    withTypeIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"type_identifier" expected to be of type "string"';
      {
        type_identifier: converted,
      }
    ),
    withTypeRevision(value):: (
      local converted = value;
      assert std.isString(converted) : '"type_revision" expected to be of type "string"';
      {
        type_revision: converted,
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
  withFormsInput(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      forms_input: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withFormsInputMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      forms_input+: converted,
    }
  ),
}
