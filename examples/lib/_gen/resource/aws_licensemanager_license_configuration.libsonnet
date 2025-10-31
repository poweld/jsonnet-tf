{
  local block = self,
  new(terraformName, licenseCountingType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_licensemanager_license_configuration",
          type:: "resource",
          attributes:: ["arn", "description", "id", "license_count", "license_count_hard_limit", "license_counting_type", "license_rules", "name", "owner_account_id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withLicenseCountingType(licenseCountingType)
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLicenseCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"license_count" expected to be of type "number"';
    {
      license_count: converted,
    }
  ),
  withLicenseCountHardLimit(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"license_count_hard_limit" expected to be of type "bool"';
    {
      license_count_hard_limit: converted,
    }
  ),
  withLicenseCountingType(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_counting_type" expected to be of type "string"';
    {
      license_counting_type: converted,
    }
  ),
  withLicenseRules(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"license_rules" expected to be of type "list"';
    {
      license_rules: converted,
    }
  ),
  withLicenseRulesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"license_rules" expected to be of type "list"';
    {
      license_rules+: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
