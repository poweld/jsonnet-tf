{
  local block = self,
  new(terraformName, linkingMode):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securityhub_finding_aggregator",
          type:: "resource",
          attributes:: ["id", "linking_mode", "region", "specified_regions"],
        },
      },
    }
    + block.withLinkingMode(linkingMode)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLinkingMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"linking_mode" expected to be of type "string"';
    {
      linking_mode: converted,
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
  withSpecifiedRegions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"specified_regions" expected to be of type "set"';
    {
      specified_regions: converted,
    }
  ),
  withSpecifiedRegionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"specified_regions" expected to be of type "set"';
    {
      specified_regions+: converted,
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
