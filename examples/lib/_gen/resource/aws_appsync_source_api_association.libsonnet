{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appsync_source_api_association",
          type:: "resource",
          attributes:: ["arn", "association_id", "description", "id", "merged_api_arn", "merged_api_id", "region", "source_api_arn", "source_api_association_config", "source_api_id"],
        },
      },
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withMergedApiArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"merged_api_arn" expected to be of type "string"';
    {
      merged_api_arn: converted,
    }
  ),
  withMergedApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"merged_api_id" expected to be of type "string"';
    {
      merged_api_id: converted,
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
  withSourceApiArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_api_arn" expected to be of type "string"';
    {
      source_api_arn: converted,
    }
  ),
  withSourceApiAssociationConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source_api_association_config" expected to be of type "list"';
    {
      source_api_association_config: converted,
    }
  ),
  withSourceApiAssociationConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source_api_association_config" expected to be of type "list"';
    {
      source_api_association_config+: converted,
    }
  ),
  withSourceApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_api_id" expected to be of type "string"';
    {
      source_api_id: converted,
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
