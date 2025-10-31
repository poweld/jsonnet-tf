{
  local block = self,
  new(terraformName, autoEnable):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securityhub_organization_configuration",
          type:: "resource",
          attributes:: ["auto_enable", "auto_enable_standards", "id", "region"],
        },
      },
    }
    + block.withAutoEnable(autoEnable)
  ),
  withAutoEnable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_enable" expected to be of type "bool"';
    {
      auto_enable: converted,
    }
  ),
  withAutoEnableStandards(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_enable_standards" expected to be of type "string"';
    {
      auto_enable_standards: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  organization_configuration:: {
    local block = self,
    new(configurationType):: (
      {}
      + block.withConfigurationType(configurationType)
    ),
    withConfigurationType(value):: (
      local converted = value;
      assert std.isString(converted) : '"configuration_type" expected to be of type "string"';
      {
        configuration_type: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withOrganizationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      organization_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withOrganizationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      organization_configuration+: converted,
    }
  ),
}
