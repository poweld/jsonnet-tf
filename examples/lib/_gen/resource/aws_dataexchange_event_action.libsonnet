{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dataexchange_event_action",
          type:: "resource",
          attributes:: ["arn", "created_at", "id", "region", "updated_at"],
        },
      },
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
  action:: {
    local block = self,
    new():: (
      {}
    ),
    export_revision_to_s3:: {
      local block = self,
      new():: (
        {}
      ),
      encryption:: {
        local block = self,
        new():: (
          {}
        ),
        withKmsKeyArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
          {
            kms_key_arn: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      revision_destination:: {
        local block = self,
        new(bucket):: (
          {}
          + block.withBucket(bucket)
        ),
        withBucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        withKeyPattern(value):: (
          local converted = value;
          assert std.isString(converted) : '"key_pattern" expected to be of type "string"';
          {
            key_pattern: converted,
          }
        ),
      },
      withEncryption(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption: value,
        }
      ),
      withRevisionDestination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          revision_destination: value,
        }
      ),
      withEncryptionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption+: converted,
        }
      ),
      withRevisionDestinationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          revision_destination+: converted,
        }
      ),
    },
    withExportRevisionToS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        export_revision_to_s3: value,
      }
    ),
    withExportRevisionToS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        export_revision_to_s3+: converted,
      }
    ),
  },
  event:: {
    local block = self,
    new():: (
      {}
    ),
    revision_published:: {
      local block = self,
      new(dataSetId):: (
        {}
        + block.withDataSetId(dataSetId)
      ),
      withDataSetId(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
        {
          data_set_id: converted,
        }
      ),
    },
    withRevisionPublished(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        revision_published: value,
      }
    ),
    withRevisionPublishedMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        revision_published+: converted,
      }
    ),
  },
  withAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  withEvent(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event: value,
    }
  ),
  withActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  withEventMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event+: converted,
    }
  ),
}
