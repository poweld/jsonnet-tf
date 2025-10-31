{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securitylake_aws_log_source",
          type:: "resource",
          attributes:: ["id", "region"],
        },
      },
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
  source:: {
    local block = self,
    new(regions, sourceName):: (
      {}
      + block.withRegions(regions)
      + block.withSourceName(sourceName)
    ),
    withAccounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts: converted,
      }
    ),
    withAccountsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts+: converted,
      }
    ),
    withRegions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
      {
        regions: converted,
      }
    ),
    withRegionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
      {
        regions+: converted,
      }
    ),
    withSourceName(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_name" expected to be of type "string"';
      {
        source_name: converted,
      }
    ),
    withSourceVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_version" expected to be of type "string"';
      {
        source_version: converted,
      }
    ),
  },
  withSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  withSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}
