{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3tables_table_bucket",
          type:: "resource",
          attributes:: ["arn", "created_at", "encryption_configuration", "force_destroy", "maintenance_configuration", "name", "owner_account_id", "region"],
        },
      },
    }
    + block.withName(name)
  ),
  withEncryptionConfiguration(value):: (
    local converted = value;
    assert std.isObject(converted) : '"encryption_configuration" expected to be of type "object"';
    {
      encryption_configuration: converted,
    }
  ),
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  withMaintenanceConfiguration(value):: (
    local converted = value;
    assert std.isObject(converted) : '"maintenance_configuration" expected to be of type "object"';
    {
      maintenance_configuration: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
