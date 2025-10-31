{
  local block = self,
  new(terraformName, integrationName, sourceArn, targetArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_integration",
          type:: "resource",
          attributes:: ["additional_encryption_context", "arn", "data_filter", "id", "integration_name", "kms_key_id", "region", "source_arn", "tags", "tags_all", "target_arn"],
        },
      },
    }
    + block.withIntegrationName(integrationName)
    + block.withSourceArn(sourceArn)
    + block.withTargetArn(targetArn)
  ),
  withAdditionalEncryptionContext(value):: (
    local converted = value;
    assert std.isObject(converted) : '"additional_encryption_context" expected to be of type "map"';
    {
      additional_encryption_context: converted,
    }
  ),
  withDataFilter(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_filter" expected to be of type "string"';
    {
      data_filter: converted,
    }
  ),
  withIntegrationName(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_name" expected to be of type "string"';
    {
      integration_name: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  withSourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_arn" expected to be of type "string"';
    {
      source_arn: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTargetArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_arn" expected to be of type "string"';
    {
      target_arn: converted,
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
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
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
