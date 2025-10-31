{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedpermissions_policy_store",
          type:: "resource",
          attributes:: ["arn", "deletion_protection", "description", "id", "policy_store_id", "region", "tags", "tags_all"],
        },
      },
    }
  ),
  withDeletionProtection(value):: (
    local converted = value;
    assert std.isString(converted) : '"deletion_protection" expected to be of type "string"';
    {
      deletion_protection: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  validation_settings:: {
    local block = self,
    new(mode):: (
      {}
      + block.withMode(mode)
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  withValidationSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_settings: value,
    }
  ),
  withValidationSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_settings+: converted,
    }
  ),
}
