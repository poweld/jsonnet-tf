{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bcmdataexports_export",
          type:: "resource",
          attributes:: ["arn", "id", "tags", "tags_all"],
        },
      },
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
  export:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    data_query:: {
      local block = self,
      new(queryStatement):: (
        {}
        + block.withQueryStatement(queryStatement)
      ),
      withQueryStatement(value):: (
        local converted = value;
        assert std.isString(converted) : '"query_statement" expected to be of type "string"';
        {
          query_statement: converted,
        }
      ),
      withTableConfigurations(value):: (
        local converted = value;
        assert std.isObject(converted) : '"table_configurations" expected to be of type "map"';
        {
          table_configurations: converted,
        }
      ),
    },
    destination_configurations:: {
      local block = self,
      new():: (
        {}
      ),
      s3_destination:: {
        local block = self,
        new(s3Bucket, s3Prefix, s3Region):: (
          {}
          + block.withS3Bucket(s3Bucket)
          + block.withS3Prefix(s3Prefix)
          + block.withS3Region(s3Region)
        ),
        withS3Bucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
          {
            s3_bucket: converted,
          }
        ),
        withS3Prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_prefix" expected to be of type "string"';
          {
            s3_prefix: converted,
          }
        ),
        withS3Region(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_region" expected to be of type "string"';
          {
            s3_region: converted,
          }
        ),
        s3_output_configurations:: {
          local block = self,
          new(compression, format, outputType, overwrite):: (
            {}
            + block.withCompression(compression)
            + block.withFormat(format)
            + block.withOutputType(outputType)
            + block.withOverwrite(overwrite)
          ),
          withCompression(value):: (
            local converted = value;
            assert std.isString(converted) : '"compression" expected to be of type "string"';
            {
              compression: converted,
            }
          ),
          withFormat(value):: (
            local converted = value;
            assert std.isString(converted) : '"format" expected to be of type "string"';
            {
              format: converted,
            }
          ),
          withOutputType(value):: (
            local converted = value;
            assert std.isString(converted) : '"output_type" expected to be of type "string"';
            {
              output_type: converted,
            }
          ),
          withOverwrite(value):: (
            local converted = value;
            assert std.isString(converted) : '"overwrite" expected to be of type "string"';
            {
              overwrite: converted,
            }
          ),
        },
        withS3OutputConfigurations(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_configurations: value,
          }
        ),
        withS3OutputConfigurationsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_configurations+: converted,
          }
        ),
      },
      withS3Destination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_destination: value,
        }
      ),
      withS3DestinationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_destination+: converted,
        }
      ),
    },
    refresh_cadence:: {
      local block = self,
      new(frequency):: (
        {}
        + block.withFrequency(frequency)
      ),
      withFrequency(value):: (
        local converted = value;
        assert std.isString(converted) : '"frequency" expected to be of type "string"';
        {
          frequency: converted,
        }
      ),
    },
    withDataQuery(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_query: value,
      }
    ),
    withDestinationConfigurations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_configurations: value,
      }
    ),
    withRefreshCadence(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        refresh_cadence: value,
      }
    ),
    withDataQueryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_query+: converted,
      }
    ),
    withDestinationConfigurationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_configurations+: converted,
      }
    ),
    withRefreshCadenceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        refresh_cadence+: converted,
      }
    ),
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
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withExport(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      export: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withExportMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      export+: converted,
    }
  ),
}
