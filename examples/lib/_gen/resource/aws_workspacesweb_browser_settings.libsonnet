{
  local block = self,
  new(terraformName, browserPolicy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_browser_settings",
          type:: "resource",
          attributes:: ["additional_encryption_context", "associated_portal_arns", "browser_policy", "browser_settings_arn", "customer_managed_key", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withBrowserPolicy(browserPolicy)
  ),
  withAdditionalEncryptionContext(value):: (
    local converted = value;
    assert std.isObject(converted) : '"additional_encryption_context" expected to be of type "map"';
    {
      additional_encryption_context: converted,
    }
  ),
  withBrowserPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"browser_policy" expected to be of type "string"';
    {
      browser_policy: converted,
    }
  ),
  withCustomerManagedKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_managed_key" expected to be of type "string"';
    {
      customer_managed_key: converted,
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
}
