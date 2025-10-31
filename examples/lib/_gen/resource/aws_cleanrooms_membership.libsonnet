{
  local block = self,
  new(terraformName, collaborationId, queryLogStatus):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cleanrooms_membership",
          type:: "resource",
          attributes:: ["arn", "collaboration_arn", "collaboration_creator_account_id", "collaboration_creator_display_name", "collaboration_id", "collaboration_name", "create_time", "id", "member_abilities", "query_log_status", "region", "status", "tags", "tags_all", "update_time"],
        },
      },
    }
    + block.withCollaborationId(collaborationId)
    + block.withQueryLogStatus(queryLogStatus)
  ),
  withCollaborationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaboration_id" expected to be of type "string"';
    {
      collaboration_id: converted,
    }
  ),
  withQueryLogStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_log_status" expected to be of type "string"';
    {
      query_log_status: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  default_result_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    output_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      s3:: {
        local block = self,
        new(bucket, resultFormat):: (
          {}
          + block.withBucket(bucket)
          + block.withResultFormat(resultFormat)
        ),
        withBucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        withKeyPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
          {
            key_prefix: converted,
          }
        ),
        withResultFormat(value):: (
          local converted = value;
          assert std.isString(converted) : '"result_format" expected to be of type "string"';
          {
            result_format: converted,
          }
        ),
      },
      withS3(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3: value,
        }
      ),
      withS3Mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3+: converted,
        }
      ),
    },
    withOutputConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_configuration: value,
      }
    ),
    withOutputConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_configuration+: converted,
      }
    ),
  },
  payment_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    query_compute:: {
      local block = self,
      new(isResponsible):: (
        {}
        + block.withIsResponsible(isResponsible)
      ),
      withIsResponsible(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"is_responsible" expected to be of type "bool"';
        {
          is_responsible: converted,
        }
      ),
    },
    withQueryCompute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_compute: value,
      }
    ),
    withQueryComputeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_compute+: converted,
      }
    ),
  },
  withDefaultResultConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_result_configuration: value,
    }
  ),
  withPaymentConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      payment_configuration: value,
    }
  ),
  withDefaultResultConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_result_configuration+: converted,
    }
  ),
  withPaymentConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      payment_configuration+: converted,
    }
  ),
}
