{
  local block = self,
  new(terraformName, accountId, detectorId, name, status):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_guardduty_member_detector_feature",
          type:: "resource",
          attributes:: ["account_id", "detector_id", "name", "region", "status"],
        },
      },
    }
    + block.withAccountId(accountId)
    + block.withDetectorId(detectorId)
    + block.withName(name)
    + block.withStatus(status)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withDetectorId(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
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
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  additional_configuration:: {
    local block = self,
    new(name, status):: (
      {}
      + block.withName(name)
      + block.withStatus(status)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  withAdditionalConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      additional_configuration: value,
    }
  ),
  withAdditionalConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      additional_configuration+: converted,
    }
  ),
}
