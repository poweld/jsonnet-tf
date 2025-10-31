{
  local block = self,
  new(terraformName, domainId, enabledRegions, environmentBlueprintId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datazone_environment_blueprint_configuration",
          type:: "resource",
          attributes:: ["domain_id", "enabled_regions", "environment_blueprint_id", "manage_access_role_arn", "provisioning_role_arn", "region", "regional_parameters"],
        },
      },
    }
    + block.withDomainId(domainId)
    + block.withEnabledRegions(enabledRegions)
    + block.withEnvironmentBlueprintId(environmentBlueprintId)
  ),
  withDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
    }
  ),
  withEnabledRegions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_regions" expected to be of type "list"';
    {
      enabled_regions: converted,
    }
  ),
  withEnabledRegionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_regions" expected to be of type "list"';
    {
      enabled_regions+: converted,
    }
  ),
  withEnvironmentBlueprintId(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_blueprint_id" expected to be of type "string"';
    {
      environment_blueprint_id: converted,
    }
  ),
  withManageAccessRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"manage_access_role_arn" expected to be of type "string"';
    {
      manage_access_role_arn: converted,
    }
  ),
  withProvisioningRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_role_arn" expected to be of type "string"';
    {
      provisioning_role_arn: converted,
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
  withRegionalParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"regional_parameters" expected to be of type "map"';
    {
      regional_parameters: converted,
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
