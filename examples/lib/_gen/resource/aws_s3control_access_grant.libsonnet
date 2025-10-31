{
  local block = self,
  new(terraformName, accessGrantsLocationId, permission):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3control_access_grant",
          type:: "resource",
          attributes:: ["access_grant_arn", "access_grant_id", "access_grants_location_id", "account_id", "grant_scope", "id", "permission", "region", "s3_prefix_type", "tags", "tags_all"],
        },
      },
    }
    + block.withAccessGrantsLocationId(accessGrantsLocationId)
    + block.withPermission(permission)
  ),
  withAccessGrantsLocationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_grants_location_id" expected to be of type "string"';
    {
      access_grants_location_id: converted,
    }
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withPermission(value):: (
    local converted = value;
    assert std.isString(converted) : '"permission" expected to be of type "string"';
    {
      permission: converted,
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
  withS3PrefixType(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_prefix_type" expected to be of type "string"';
    {
      s3_prefix_type: converted,
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
  access_grants_location_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withS3SubPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_sub_prefix" expected to be of type "string"';
      {
        s3_sub_prefix: converted,
      }
    ),
  },
  grantee:: {
    local block = self,
    new(granteeIdentifier, granteeType):: (
      {}
      + block.withGranteeIdentifier(granteeIdentifier)
      + block.withGranteeType(granteeType)
    ),
    withGranteeIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee_identifier" expected to be of type "string"';
      {
        grantee_identifier: converted,
      }
    ),
    withGranteeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"grantee_type" expected to be of type "string"';
      {
        grantee_type: converted,
      }
    ),
  },
  withAccessGrantsLocationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_grants_location_configuration: value,
    }
  ),
  withGrantee(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grantee: value,
    }
  ),
  withAccessGrantsLocationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_grants_location_configuration+: converted,
    }
  ),
  withGranteeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grantee+: converted,
    }
  ),
}
