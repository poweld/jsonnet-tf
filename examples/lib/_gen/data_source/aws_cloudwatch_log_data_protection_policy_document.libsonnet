{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_data_protection_policy_document",
          type:: "data",
          attributes:: ["description", "id", "json", "name", "version"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    custom_data_identifier:: {
      local block = self,
      new(name, regex):: (
        {}
        + block.withName(name)
        + block.withRegex(regex)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withRegex(value):: (
        local converted = value;
        assert std.isString(converted) : '"regex" expected to be of type "string"';
        {
          regex: converted,
        }
      ),
    },
    withCustomDataIdentifier(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_data_identifier: value,
      }
    ),
    withCustomDataIdentifierMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_data_identifier+: converted,
      }
    ),
  },
  statement:: {
    local block = self,
    new(dataIdentifiers):: (
      {}
      + block.withDataIdentifiers(dataIdentifiers)
    ),
    withDataIdentifiers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_identifiers" expected to be of type "set"';
      {
        data_identifiers: converted,
      }
    ),
    withDataIdentifiersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_identifiers" expected to be of type "set"';
      {
        data_identifiers+: converted,
      }
    ),
    withSid(value):: (
      local converted = value;
      assert std.isString(converted) : '"sid" expected to be of type "string"';
      {
        sid: converted,
      }
    ),
    operation:: {
      local block = self,
      new():: (
        {}
      ),
      audit:: {
        local block = self,
        new():: (
          {}
        ),
        findings_destination:: {
          local block = self,
          new():: (
            {}
          ),
          cloudwatch_logs:: {
            local block = self,
            new(logGroup):: (
              {}
              + block.withLogGroup(logGroup)
            ),
            withLogGroup(value):: (
              local converted = value;
              assert std.isString(converted) : '"log_group" expected to be of type "string"';
              {
                log_group: converted,
              }
            ),
          },
          firehose:: {
            local block = self,
            new(deliveryStream):: (
              {}
              + block.withDeliveryStream(deliveryStream)
            ),
            withDeliveryStream(value):: (
              local converted = value;
              assert std.isString(converted) : '"delivery_stream" expected to be of type "string"';
              {
                delivery_stream: converted,
              }
            ),
          },
          s3:: {
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
          },
          withCloudwatchLogs(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              cloudwatch_logs: value,
            }
          ),
          withFirehose(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              firehose: value,
            }
          ),
          withS3(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              s3: value,
            }
          ),
          withCloudwatchLogsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              cloudwatch_logs+: converted,
            }
          ),
          withFirehoseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              firehose+: converted,
            }
          ),
          withS3Mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              s3+: converted,
            }
          ),
        },
        withFindingsDestination(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            findings_destination: value,
          }
        ),
        withFindingsDestinationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            findings_destination+: converted,
          }
        ),
      },
      deidentify:: {
        local block = self,
        new():: (
          {}
        ),
        mask_config:: {
          local block = self,
          new():: (
            {}
          ),
        },
        withMaskConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            mask_config: value,
          }
        ),
        withMaskConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            mask_config+: converted,
          }
        ),
      },
      withAudit(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audit: value,
        }
      ),
      withDeidentify(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          deidentify: value,
        }
      ),
      withAuditMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audit+: converted,
        }
      ),
      withDeidentifyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          deidentify+: converted,
        }
      ),
    },
    withOperation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        operation: value,
      }
    ),
    withOperationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        operation+: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withStatement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statement: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  withStatementMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statement+: converted,
    }
  ),
}
