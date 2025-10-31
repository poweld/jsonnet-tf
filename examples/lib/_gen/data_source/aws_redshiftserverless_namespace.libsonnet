{
  local block = self,
  new(terraformName, namespaceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshiftserverless_namespace",
          type:: "data",
          attributes:: ["admin_username", "arn", "db_name", "default_iam_role_arn", "iam_roles", "id", "kms_key_id", "log_exports", "namespace_id", "namespace_name", "region"],
        },
      },
    }
    + block.withNamespaceName(namespaceName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
