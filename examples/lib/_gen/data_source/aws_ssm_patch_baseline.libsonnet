{
  local block = self,
  new(terraformName, owner):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_patch_baseline",
          type:: "data",
          attributes:: ["approval_rule", "approved_patches", "approved_patches_compliance_level", "approved_patches_enable_non_security", "available_security_updates_compliance_status", "default_baseline", "description", "global_filter", "id", "json", "name", "name_prefix", "operating_system", "owner", "region", "rejected_patches", "rejected_patches_action", "source"],
        },
      },
    }
    + block.withOwner(owner)
  ),
  withDefaultBaseline(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_baseline" expected to be of type "bool"';
    {
      default_baseline: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withOperatingSystem(value):: (
    local converted = value;
    assert std.isString(converted) : '"operating_system" expected to be of type "string"';
    {
      operating_system: converted,
    }
  ),
  withOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
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
