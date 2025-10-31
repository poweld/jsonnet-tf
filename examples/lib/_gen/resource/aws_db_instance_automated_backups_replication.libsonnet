{
  local block = self,
  new(terraformName, sourceDbInstanceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_instance_automated_backups_replication",
          type:: "resource",
          attributes:: ["id", "kms_key_id", "pre_signed_url", "region", "retention_period", "source_db_instance_arn"],
        },
      },
    }
    + block.withSourceDbInstanceArn(sourceDbInstanceArn)
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
  withPreSignedUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"pre_signed_url" expected to be of type "string"';
    {
      pre_signed_url: converted,
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
  withRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period" expected to be of type "number"';
    {
      retention_period: converted,
    }
  ),
  withSourceDbInstanceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_db_instance_arn" expected to be of type "string"';
    {
      source_db_instance_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
