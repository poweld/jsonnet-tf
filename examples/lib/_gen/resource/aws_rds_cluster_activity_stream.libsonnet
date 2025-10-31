{
  local block = self,
  new(terraformName, kmsKeyId, mode, resourceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_cluster_activity_stream",
          type:: "resource",
          attributes:: ["engine_native_audit_fields_included", "id", "kinesis_stream_name", "kms_key_id", "mode", "region", "resource_arn"],
        },
      },
    }
    + block.withKmsKeyId(kmsKeyId)
    + block.withMode(mode)
    + block.withResourceArn(resourceArn)
  ),
  withEngineNativeAuditFieldsIncluded(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"engine_native_audit_fields_included" expected to be of type "bool"';
    {
      engine_native_audit_fields_included: converted,
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
  withMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"mode" expected to be of type "string"';
    {
      mode: converted,
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
  withResourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
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
