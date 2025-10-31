{
  local block = self,
  new(terraformName, suppressedReasons):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sesv2_account_suppression_attributes",
          type:: "resource",
          attributes:: ["id", "region", "suppressed_reasons"],
        },
      },
    }
    + block.withSuppressedReasons(suppressedReasons)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSuppressedReasons(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"suppressed_reasons" expected to be of type "set"';
    {
      suppressed_reasons: converted,
    }
  ),
  withSuppressedReasonsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"suppressed_reasons" expected to be of type "set"';
    {
      suppressed_reasons+: converted,
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
