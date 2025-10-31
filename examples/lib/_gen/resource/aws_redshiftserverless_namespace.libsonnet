{
  local block = self,
  new(terraformName, namespaceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshiftserverless_namespace",
          type:: "resource",
          attributes:: ["admin_password_secret_arn", "admin_password_secret_kms_key_id", "admin_user_password", "admin_user_password_wo", "admin_user_password_wo_version", "admin_username", "arn", "db_name", "default_iam_role_arn", "iam_roles", "id", "kms_key_id", "log_exports", "manage_admin_password", "namespace_id", "namespace_name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withNamespaceName(namespaceName)
  ),
  withAdminPasswordSecretKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_password_secret_kms_key_id" expected to be of type "string"';
    {
      admin_password_secret_kms_key_id: converted,
    }
  ),
  withAdminUserPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_user_password" expected to be of type "string"';
    {
      admin_user_password: converted,
    }
  ),
  withAdminUserPasswordWo(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_user_password_wo" expected to be of type "string"';
    {
      admin_user_password_wo: converted,
    }
  ),
  withAdminUserPasswordWoVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"admin_user_password_wo_version" expected to be of type "number"';
    {
      admin_user_password_wo_version: converted,
    }
  ),
  withAdminUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_username" expected to be of type "string"';
    {
      admin_username: converted,
    }
  ),
  withDbName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_name" expected to be of type "string"';
    {
      db_name: converted,
    }
  ),
  withDefaultIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_iam_role_arn" expected to be of type "string"';
    {
      default_iam_role_arn: converted,
    }
  ),
  withIamRoles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles: converted,
    }
  ),
  withIamRolesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withLogExports(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_exports" expected to be of type "set"';
    {
      log_exports: converted,
    }
  ),
  withLogExportsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_exports" expected to be of type "set"';
    {
      log_exports+: converted,
    }
  ),
  withManageAdminPassword(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"manage_admin_password" expected to be of type "bool"';
    {
      manage_admin_password: converted,
    }
  ),
  withNamespaceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_name" expected to be of type "string"';
    {
      namespace_name: converted,
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
