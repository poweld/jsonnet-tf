{
  local block = self,
  new(terraformName, cookieDuration, enabled, lbName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_lb_stickiness_policy",
          type:: "resource",
          attributes:: ["cookie_duration", "enabled", "id", "lb_name", "region"],
        },
      },
    }
    + block.withCookieDuration(cookieDuration)
    + block.withEnabled(enabled)
    + block.withLbName(lbName)
  ),
  withCookieDuration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cookie_duration" expected to be of type "number"';
    {
      cookie_duration: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLbName(value):: (
    local converted = value;
    assert std.isString(converted) : '"lb_name" expected to be of type "string"';
    {
      lb_name: converted,
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
}
