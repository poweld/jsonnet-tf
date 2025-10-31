{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_shield_subscription",
          type:: "resource",
          attributes:: ["auto_renew", "id", "skip_destroy"],
        },
      },
    }
  ),
  "#withAutoRenew":: "Whether to automatically renew the subscription when it expires.",
  withAutoRenew(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_renew" expected to be of type "string"';
    {
      auto_renew: converted,
    }
  ),
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
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
