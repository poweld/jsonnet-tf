{
  local block = self,
  new(terraformName, additionalSchemaElements, compression, format, reportName, s3Bucket, s3Prefix, s3Region, timeUnit):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cur_report_definition",
          type:: "resource",
          attributes:: ["additional_artifacts", "additional_schema_elements", "arn", "compression", "format", "id", "refresh_closed_reports", "report_name", "report_versioning", "s3_bucket", "s3_prefix", "s3_region", "tags", "tags_all", "time_unit"],
        },
      },
    }
    + block.withAdditionalSchemaElements(additionalSchemaElements)
    + block.withCompression(compression)
    + block.withFormat(format)
    + block.withReportName(reportName)
    + block.withS3Bucket(s3Bucket)
    + block.withS3Prefix(s3Prefix)
    + block.withS3Region(s3Region)
    + block.withTimeUnit(timeUnit)
  ),
  withAdditionalArtifacts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_artifacts" expected to be of type "set"';
    {
      additional_artifacts: converted,
    }
  ),
  withAdditionalArtifactsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_artifacts" expected to be of type "set"';
    {
      additional_artifacts+: converted,
    }
  ),
  withAdditionalSchemaElements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_schema_elements" expected to be of type "set"';
    {
      additional_schema_elements: converted,
    }
  ),
  withAdditionalSchemaElementsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_schema_elements" expected to be of type "set"';
    {
      additional_schema_elements+: converted,
    }
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withRefreshClosedReports(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"refresh_closed_reports" expected to be of type "bool"';
    {
      refresh_closed_reports: converted,
    }
  ),
  withReportName(value):: (
    local converted = value;
    assert std.isString(converted) : '"report_name" expected to be of type "string"';
    {
      report_name: converted,
    }
  ),
  withReportVersioning(value):: (
    local converted = value;
    assert std.isString(converted) : '"report_versioning" expected to be of type "string"';
    {
      report_versioning: converted,
    }
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTimeUnit(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_unit" expected to be of type "string"';
    {
      time_unit: converted,
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
