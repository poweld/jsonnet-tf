{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_docdb_engine_version",
          type:: "data",
          attributes:: ["engine", "engine_description", "exportable_log_types", "id", "parameter_group_family", "preferred_versions", "region", "supports_log_exports_to_cloudwatch", "valid_upgrade_targets", "version", "version_description"],
        },
      },
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withParameterGroupFamily(value):: (
    local converted = value;
    assert std.isString(converted) : '"parameter_group_family" expected to be of type "string"';
    {
      parameter_group_family: converted,
    }
  ),
  withPreferredVersions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_versions" expected to be of type "list"';
    {
      preferred_versions: converted,
    }
  ),
  withPreferredVersionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_versions" expected to be of type "list"';
    {
      preferred_versions+: converted,
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
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
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
