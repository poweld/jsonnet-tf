{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_auditmanager_account_registration",
          type:: "resource",
          attributes:: ["delegated_admin_account", "deregister_on_destroy", "id", "kms_key", "region", "status"],
        },
      },
    }
  ),
  withDelegatedAdminAccount(value):: (
    local converted = value;
    assert std.isString(converted) : '"delegated_admin_account" expected to be of type "string"';
    {
      delegated_admin_account: converted,
    }
  ),
  withDeregisterOnDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deregister_on_destroy" expected to be of type "bool"';
    {
      deregister_on_destroy: converted,
    }
  ),
  withKmsKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key" expected to be of type "string"';
    {
      kms_key: converted,
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
