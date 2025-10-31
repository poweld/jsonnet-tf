{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ses_configuration_set",
          type:: "resource",
          attributes:: ["arn", "id", "last_fresh_start", "name", "region", "reputation_metrics_enabled", "sending_enabled"],
        },
      },
    }
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withReputationMetricsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"reputation_metrics_enabled" expected to be of type "bool"';
    {
      reputation_metrics_enabled: converted,
    }
  ),
  withSendingEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"sending_enabled" expected to be of type "bool"';
    {
      sending_enabled: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  delivery_options:: {
    local block = self,
    new():: (
      {}
    ),
    withTlsPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_policy" expected to be of type "string"';
      {
        tls_policy: converted,
      }
    ),
  },
  tracking_options:: {
    local block = self,
    new():: (
      {}
    ),
    withCustomRedirectDomain(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_redirect_domain" expected to be of type "string"';
      {
        custom_redirect_domain: converted,
      }
    ),
  },
  withDeliveryOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_options: value,
    }
  ),
  withTrackingOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracking_options: value,
    }
  ),
  withDeliveryOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_options+: converted,
    }
  ),
  withTrackingOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracking_options+: converted,
    }
  ),
}
