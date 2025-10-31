{
  local block = self,
  new(terraformName, displayName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_ip_access_settings",
          type:: "resource",
          attributes:: ["additional_encryption_context", "associated_portal_arns", "customer_managed_key", "description", "display_name", "ip_access_settings_arn", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDisplayName(displayName)
  ),
  withAdditionalEncryptionContext(value):: (
    local converted = value;
    assert std.isObject(converted) : '"additional_encryption_context" expected to be of type "map"';
    {
      additional_encryption_context: converted,
    }
  ),
  withCustomerManagedKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_managed_key" expected to be of type "string"';
    {
      customer_managed_key: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  ip_rule:: {
    local block = self,
    new(ipRange):: (
      {}
      + block.withIpRange(ipRange)
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withIpRange(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_range" expected to be of type "string"';
      {
        ip_range: converted,
      }
    ),
  },
  withIpRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_rule: value,
    }
  ),
  withIpRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_rule+: converted,
    }
  ),
}
